import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import 'package:owl_chat/presentation/widgets/friend_card.dart';

class ChatsScreen extends StatelessWidget {
  static const String id = 'ChatsScreen';

  @override
  Widget build(BuildContext context) {
    final messages = MessagesData().messages;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Edit'),
            Text('Chats'),
            Icon(Icons.create),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 2) {
            Navigator.pushNamed(context, SettingsScreen.id);
          }
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 30,
              ),
              label: 'contacts'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.forum,
                size: 30,
              ),
              label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              label: 'setting'),
        ],
        currentIndex: 1,
      ),
      body: Body(messages: messages),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
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
