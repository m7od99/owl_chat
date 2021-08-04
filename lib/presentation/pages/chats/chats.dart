import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/domain/event_handler/messages_state.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/widgets/friend_card.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final _control = MessagesState();
  List<Chat> chats = [];

  getChats() async {
    chats = await _control.getChats();
  }

  @override
  void initState() {
    super.initState();
    getChats();
  }

  @override
  Widget build(BuildContext context) {
    if (chats.isEmpty) {
      return Container();
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: chats.length,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        itemBuilder: (BuildContext context, int index) => FriendCard(
          chat: chats[index],
          onTap: () {
            Navigator.pushNamed(context, ChatScreen.id);
          },
        ),
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
