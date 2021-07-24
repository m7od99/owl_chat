import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/message.dart';
import 'package:owl_chat/presentation/theme/constant.dart';
import 'package:provider/provider.dart';

class SendMessageField extends StatefulWidget {
  @override
  _SendMessageFieldState createState() => _SendMessageFieldState();
}

class _SendMessageFieldState extends State<SendMessageField> {
  final editControl = TextEditingController();

  final _focusNode = FocusNode();

  String? text;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);
    final control = Provider.of<MessageControl>(context);

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
                          setState(() {
                            text = value;
                          });
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
                onPressed: () async {
                  final message = Message(
                      sender: user.userEmail,
                      receiver: 'no one',
                      text: text!,
                      time: Timestamp.now(),
                      isMe: true);

                  await control.sendMessage(message);

                  editControl.clear();
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
