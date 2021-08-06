import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/domain/event_handler/chats_logic.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/widgets/friend_card.dart';
import 'package:provider/provider.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserControl>(context);
    final _chats = ChatsController();
    final stream = control.getChats(user.userId);

    return Scaffold(
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: stream,
          builder: (context, snapshot) {
            print(snapshot.hasData);
            if (!snapshot.hasData) return Container();

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
                  onTap: () {
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
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
              ),
            );
          },
        ),
      ),
    );
  }
}
