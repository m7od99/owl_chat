import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/widgets/searching_by_name.dart';
import 'package:provider/provider.dart';

import '../../../data/data_controller/message_control.dart';
import '../../../data/models/chat.dart';
import '../../../logic/event_handler/chats_logic.dart';
import '../../widgets/friend_card.dart';
import '../chat/chat_screen.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserState>(context);
    final _chats = ChatsController();
    final stream = control.getChats(user.userId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        automaticallyImplyLeading: false,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Chats'),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, SearchByName.id);
              },
            )
          ],
        ),
      ),
      body: ChatsStream(stream: stream, chats: _chats, user: user),
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
              closeButton: Container(),
              currentAccountPicture: const GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    user.userName,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    user.email,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text('Theme'),
              onTap: null,
            ),
            const ListTile(
              title: Text('Language'),
              onTap: null,
            ),
            const ListTile(
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

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
