import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/widgets/message_bubble.dart';
import 'package:owl_chat/presentation/widgets/send_message_field.dart';

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
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => MessageBubble(
            text: messages[index].text,
            sender: messages[index].sender,
            isMe: messages[index].isMe,
          ),
          itemCount: messages.length,
          reverse: true,
        ),
      ),
      bottomSheet: SendMessageField(),
    );
  }
}

List<MessageBubble> messages_ = [
  MessageBubble(text: 'hello', sender: 'cal', isMe: true),
  MessageBubble(text: 'hello', sender: 'jin', isMe: false),
  MessageBubble(text: 'how are you', sender: 'cal', isMe: true),
  MessageBubble(text: 'good and you', sender: 'jin', isMe: false),
  MessageBubble(text: 'not bad', sender: 'cal', isMe: true),
  MessageBubble(text: 'nslkansaklsnalk', sender: 'cal', isMe: true),
  MessageBubble(text: 'kajnosaknslkas', sender: 'jin', isMe: false),
  MessageBubble(text: 'mkm lkm klm kln ', sender: 'cal', isMe: true),
  MessageBubble(text: 'klmlk mlm lm lmjihy', sender: 'jin', isMe: false),
  MessageBubble(text: 'mlkmlk nlkn kljn knl', sender: 'cal', isMe: true),
];
var messages = messages_.reversed.toList();
