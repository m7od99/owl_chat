import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/widgets/friend_card.dart';

class Chats extends StatelessWidget {
  const Chats({
    Key? key,
    required this.messages,
  }) : super(key: key);

  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: messages.length,
      padding: EdgeInsets.symmetric(horizontal: 5),
      itemBuilder: (BuildContext context, int index) => FriendCard(
        message: messages[index],
        onTap: () {
          Navigator.pushNamed(context, ChatScreen.id);
        },
      ),
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }
}

class MessagesData {
  List<Message> messages = [];
  final faker = Faker();

  MessagesData() {
    getMessages();
  }

  void getMessages() {
    for (int i = 0; i < 10; i++) {
      final message = Message(
          sender: faker.person.name(),
          text: faker.food.restaurant(),
          time: faker.date.time());
      messages.add(message);
    }
  }
}

class Message {
  final String sender;

  final String text;

  final String time;

  Message({required this.sender, required this.text, required this.time});
}
