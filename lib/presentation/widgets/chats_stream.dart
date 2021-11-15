import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../data/models/chat.dart';
import '../../logic/event_handler/chats_logic.dart';
import '../../logic/event_handler/user_state.dart';
import '../pages/chat/chat_screen.dart';
import 'friend_card.dart';

class ChatsStream extends StatelessWidget {
  const ChatsStream({
    Key? key,
    required this.stream,
    required ChatsController chats,
    required this.user,
  })  : _chats = chats,
        super(key: key);

  final stream;
  final ChatsController _chats;
  final UserState user;

  String otherId(Chat chat) {
    if (user.userId == chat.other!.id) {
      return chat.me!.id;
    }
    return chat.other!.id;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: stream,
      builder: (context, snapshot) {
        log(snapshot.hasData.toString());
        if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

        final snap = snapshot.data!.docs;
        final data = _chats.getMyChats(snap);
        final List<Chat> chats = _chats.getChats(data);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            itemCount: chats.length,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            itemBuilder: (BuildContext context, int index) => FriendCard(
              chat: chats[index],
              onTap: () async {
                user.updateOnChat(chats[index].other!.id);
                await Navigator.pushNamed(
                  context,
                  ChatScreen.id,
                  arguments: chats[index],
                );
              },
            ),
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        );
      },
    );
  }
}
