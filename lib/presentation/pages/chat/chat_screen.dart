import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:owl_chat/presentation/theme/constant.dart';
import 'package:owl_chat/presentation/widgets/message_bubble.dart';

class ChatScreen extends StatelessWidget {
  static String id = 'ChatScreen';

  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('sender'),
            Icon(Icons.account_circle, size: 30),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MessageBubble(text: 'hello', sender: 'cal', isMe: true),
            MessageBubble(text: 'hello', sender: 'jin', isMe: false),
            MessageBubble(text: 'how are you', sender: 'cal', isMe: true),
            MessageBubble(text: 'good and you', sender: 'jin', isMe: false),
            MessageBubble(text: 'not bad', sender: 'cal', isMe: true),
            Spacer(),
            SendMessageField(),
          ],
        ),
      ),
    );
  }
}

class SendMessageField extends StatelessWidget {
  final editControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
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
                onPressed: () {},
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
