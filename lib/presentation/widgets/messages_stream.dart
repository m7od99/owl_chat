import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/message.dart';
import 'package:owl_chat/presentation/widgets/message_bubble.dart';
import 'package:provider/provider.dart';

class ChatStream extends StatelessWidget {
  final Chat chat;
  final ScrollController controller;

  const ChatStream({Key? key, required this.chat, required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);

    final stream = control.getMessages(chat.id);

    return StreamBuilder<QuerySnapshot>(
      stream: stream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        final data = snapshot.data!.docs.reversed;
        List<MessageBubble> messages = [];

        for (var mess in data) {
          dynamic doc = mess.data();
          final message = Message.fromMap(doc);
          message.isMe = control.isMe(message.sender);

          messages.add(
            MessageBubble(
              key: GlobalKey(),
              message: message,
            ),
          );
        }
        return ListView(
          controller: controller,
          children: messages,
          padding: EdgeInsets.all(2),
          reverse: true,
        );
      },
    );
  }
}
