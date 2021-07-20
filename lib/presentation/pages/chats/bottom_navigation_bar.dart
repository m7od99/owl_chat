import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chats/chats.dart';
import 'package:owl_chat/presentation/pages/contacts/contacts_screen.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
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
