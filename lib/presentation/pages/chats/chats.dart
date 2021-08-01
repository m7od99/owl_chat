import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/widgets/friend_card.dart';

class Chats extends StatelessWidget {
  final List<Chat> chats;
  const Chats({
    Key? key,
    required this.chats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
