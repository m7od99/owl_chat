import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/data_controller/message_control.dart';
import '../../../../data/models/chats/chat.dart';
import '../../../../data/models/chats/message.dart';
import 'message_bubble.dart';

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
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final data = snapshot.data!.docs.reversed;
        final List<MessageBubble> messages = [];

        for (final mess in data) {
          final dynamic doc = mess.data();
          final message = Message.fromMap(doc as Map<String, dynamic>);
          message.isMe = control.isMe(message.sender);

          messages.add(
            MessageBubble(
              key: GlobalKey(),
              message: message,
              // onDoubleTap: () async {
              //   await Navigator.push(
              //     context,
              //     HeroDialogRoute(
              //       builder: (BuildContext context) {
              //         return PopupCard(
              //           message: message, tag: 0,
              //         );
              //       },
              //     ),
              //   );
              // },
            ),
          );
        }
        return ListView.builder(
          controller: controller,
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          reverse: true,
          itemCount: messages.length,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemBuilder: (context, index) => messages[index],
        );
      },
    );
  }
}
