import 'package:easy_localization/easy_localization.dart';
import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/pages/contacts/contacts_screen.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import 'package:owl_chat/presentation/widgets/friend_card.dart';
import "package:owl_chat/translations/locale_keys.g.dart";

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final messages = MessagesData().messages;

    List<Widget> _pages = [
      ContactsScreen(),
      Chats(messages: messages),
      SettingsScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        automaticallyImplyLeading: false,
        title: title.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTaped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: LocaleKeys.contacts.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.forum,
            ),
            label: LocaleKeys.chats.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: LocaleKeys.settings.tr(),
          ),
        ],
        currentIndex: currentIndex,
      ),
      body: _pages.elementAt(currentIndex),
    );
  }

  List<Widget> title = [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.contacts.tr()),
        Icon(Icons.add),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.edit.tr()),
        Text(LocaleKeys.chats.tr()),
        Icon(Icons.create),
      ],
    ),
    Row(
      children: [
        Text(LocaleKeys.settings.tr()),
      ],
    ),
  ];

  void onTaped(index) {
    setState(() {
      currentIndex = index;
    });
  }
}

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
