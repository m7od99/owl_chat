import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/message.dart';
import 'package:owl_chat/presentation/theme/constant.dart';
import 'package:provider/provider.dart';

class SendMessageField extends StatefulWidget {
  final Chat chat;

  const SendMessageField({Key? key, required this.chat}) : super(key: key);

  @override
  _SendMessageFieldState createState() => _SendMessageFieldState();
}

class _SendMessageFieldState extends State<SendMessageField> {
  final editControl = TextEditingController();

  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);
    final control = Provider.of<MessageControl>(context);
    String? text;

    bool isMe(String messageSender) {
      if (messageSender == user.email) {
        return true;
      } else {
        return false;
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Colors.grey.withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.75,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        controller: editControl,
                        focusNode: _focusNode,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        onChanged: (value) {
                          text = value;
                        },
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).backgroundColor.withOpacity(0.15),
              ),
              child: IconButton(
                onPressed: () {
                  if (text != null) {
                    control.sendMessage(
                        Message(
                          sender: user.email,
                          receiver: widget.chat.name,
                          text: text!,
                          time: Timestamp.now(),
                          isMe: isMe(user.email),
                        ),
                        widget.chat.id);
                    widget.chat.lastMessage = text!;
                    widget.chat.time = Timestamp.now();
                    control.createChat(widget.chat);
                  }
                  setState(() {
                    editControl.clear();
                  });
                },
                iconSize: 30,
                color: Colors.blueGrey,
                icon: Icon(
                  Icons.arrow_upward,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
