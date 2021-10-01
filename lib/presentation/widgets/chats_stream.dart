import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/logic/event_handler/chats_logic.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/widgets/friend_card.dart';

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
    return Container(
      child: StreamBuilder<QuerySnapshot>(
        stream: stream,
        builder: (context, snapshot) {
          print(snapshot.hasData);
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          final snap = snapshot.data!.docs;
          final data = _chats.getMyChats(snap);
          List<Chat> chats = _chats.getChats(data);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              itemCount: chats.length,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              itemBuilder: (BuildContext context, int index) => FriendCard(
                chat: chats[index],
                onTap: () async {
                  user.updateOnChat(chats[index].other!.id);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(
                        chat: chats[index],
                      ),
                    ),
                  );
                },
              ),
              separatorBuilder: (BuildContext context, int index) => Divider(),
            ),
          );
        },
      ),
    );
  }
}
