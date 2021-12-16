import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../data/data_controller/message_control.dart';
import '../../../../data/models/chats/chat.dart';
import '../../../../logic/event_handler/chats_logic.dart';
import '../../../../logic/event_handler/user_state.dart';
import 'friend_card.dart';

class ChatsStream extends StatelessWidget {
  const ChatsStream({
    Key? key,
  }) : super(key: key);

  String otherId(Chat chat) {
    if (UserState().userId == chat.other!.id) {
      return chat.me!.id;
    }
    return chat.other!.id;
  }

  @override
  Widget build(BuildContext context) {
    final UserState user = Provider.of<UserState>(context);

    final control = Provider.of<MessageControl>(context);
    final _chats = ChatsController();
    final stream = control.getChats(user.userId);

    return StreamBuilder<QuerySnapshot>(
      stream: stream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

        final snap = snapshot.data!.docs;
        final data = _chats.getMyChats(snap);
        final List<Chat> chats = _chats.getChats(data);
        if (chats.isEmpty) {
          return const Center(
            child: Text(
              'You dont have any chat',
              style: TextStyle(fontSize: 18),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            itemCount: chats.length,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            itemBuilder: (BuildContext context, int index) => FriendCard(
              chat: chats[index],
              onTap: () async {
                user.updateOnChat(chats[index].id);
                context.go('/chat/${chats[index].id}', extra: chats[index]);
              },
            ),
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        );
      },
    );
  }
}
