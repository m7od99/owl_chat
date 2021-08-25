import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/data_controller/message_control.dart';
import '../../../data/data_controller/user_control.dart';
import '../../../data/models/chat.dart';
import '../../../logic/event_handler/chats_logic.dart';
import '../../widgets/friend_card.dart';
import '../../widgets/search_for%20users.dart';
import '../chat/chat_screen.dart';
import 'package:fluent_ui/fluent_ui.dart' as fl;

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserControl>(context);
    final _chats = ChatsController();
    final stream = control.getChats(user.userId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('edits'),
            Text('Chats'),
            IconButton(
              icon: Icon(fl.FluentIcons.profile_search),
              onPressed: () {
                Navigator.pushNamed(context, Search.id);
              },
            )
          ],
        ),
      ),
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
                separatorBuilder: (BuildContext context, int index) => Divider(),
              ),
            );
          },
        ),
      ),
    );
  }
}
