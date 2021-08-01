import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/message.dart';
import 'package:owl_chat/presentation/widgets/message_bubble.dart';
import 'package:provider/provider.dart';

class ChatStream extends StatelessWidget {
  final Chat chat;

  const ChatStream({Key? key, required this.chat}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserControl>(context);
    final stream = control.getMessages('1');

    return SafeArea(
      child: StreamBuilder<QuerySnapshot>(
          stream: stream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Container();
            }
            final data = snapshot.data!.docs.reversed;
            List<MessageBubble> messages = [];

            for (var mess in data) {
              dynamic message = mess.data();
              messages.add(
                MessageBubble(
                  key: GlobalKey(),
                  message: Message.fromMap(message),
                ),
              );
            }
            return ListView(
              children: messages,
              padding: EdgeInsets.all(2),
              reverse: true,
            );
          }),
    );
  }
}
