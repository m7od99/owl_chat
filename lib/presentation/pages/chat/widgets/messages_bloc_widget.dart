import 'package:flutter/material.dart';

import '../../../../data/models/chats/chat.dart';
import '../../../../data/models/chats/message.dart';
import '../../../../logic/event_handler/messages_bloc.dart';
import '../../../widgets/hero_root.dart';
import 'message_bubble.dart';
import 'popup_card.dart';

class MessagesView extends StatelessWidget {
  final Chat chat;
  final ScrollController controller;

  const MessagesView({Key? key, required this.chat, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = MessagesBloc();
    return StreamBuilder<List<Message>>(
      stream: bloc.getMessages(chat.id),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          controller: controller,
          reverse: true,
          itemCount: snapshot.data!.length,
          padding: const EdgeInsets.all(2),
          itemBuilder: (BuildContext context, int index) => MessageBubble(
            message: snapshot.data![index],
            onDoubleTap: () {
              Navigator.push(
                context,
                HeroDialogRoute(
                  builder: (BuildContext context) {
                    return PopupCard(
                      message: snapshot.data![index],
                      tag: index,
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
