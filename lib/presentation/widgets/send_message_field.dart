import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluent_ui/fluent_ui.dart' as fl;
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
    Chat chat = widget.chat;
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
        horizontal: kDefaultPadding / 2,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 12,
            color: Colors.grey.withOpacity(0.10),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(25),
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
                        style: TextStyle(fontSize: 16),
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
                    final message = Message(
                      sender: user.userId,
                      receiver: chat.other!.id,
                      text: text!,
                      isSend: true,
                      time: Timestamp.now(),
                      isMe: isMe(user.email),
                    );
                    control.sendMessage(message, chat.id);

                    chat.lastMessage = text!;
                    chat.time = Timestamp.now();
                    control.createChat(widget.chat);
                  }
                  setState(() {
                    editControl.clear();
                  });
                },
                iconSize: 25,
                color: Colors.blueGrey,
                icon: Icon(
                  fl.FluentIcons.send,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
