import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/widgets/friend_card.dart';
import 'package:provider/provider.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserControl>(context);
    final stream = control.getChats(user.userId);

    return Scaffold(
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: stream,
          builder: (context, snapshot) {
            print(snapshot.hasData);
            if (!snapshot.hasData) return Container();

            List<Chat> chats = [];
            final data = snapshot.data!.docs;

            for (var chat in data) {
              dynamic doc = chat.data();
              chats.add(Chat.fromMap(doc));
              print(doc['id']);
              print(doc);
            }

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