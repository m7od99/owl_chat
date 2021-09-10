import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluent_ui/fluent_ui.dart' as fl;
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/user.dart';
import 'package:owl_chat/presentation/widgets/searching_by_name.dart';
import 'package:provider/provider.dart';

import '../../../data/data_controller/message_control.dart';
import '../../../data/data_controller/user_control.dart';
import '../../../data/models/chat.dart';
import '../../../logic/event_handler/chats_logic.dart';
import '../../widgets/friend_card.dart';
import '../chat/chat_screen.dart';

class Chats extends fl.StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends fl.State<Chats> {
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserControl>(context);
    final _chats = ChatsController();
    final stream = control.getChats(user.userId);

    String otherId(Chat chat) {
      if (user.userId == chat.other!.id) {
        return chat.me!.id;
      }
      return chat.other!.id;
    }

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
                Navigator.pushNamed(context, SearchByName.id);
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
            if (!snapshot.hasData)
              return fl.Center(child: CircularProgressIndicator());

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
                    user.updateUser(OwlUser(
                      email: user.email,
                      id: user.userId,
                      userName: user.userName,
                      onChat: otherId(chats[index]),
                    ));
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
