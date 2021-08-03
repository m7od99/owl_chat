import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/presentation/pages/chats/chats.dart';
import 'package:owl_chat/presentation/pages/contacts/contacts_screen.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import 'package:owl_chat/presentation/widgets/search_for users.dart';
import "package:owl_chat/translations/locale_keys.g.dart";

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

int currentIndex = 1;

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    void onTaped(index) {
      setState(() {
        currentIndex = index;
      });
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
          IconButton(
            icon: Icon(Icons.create),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.bottom),
                  child: Search(),
                ),
              );
            },
          ),
        ],
      ),
      Row(
        children: [
          Text(LocaleKeys.settings.tr()),
        ],
      ),
    ];

    List<Widget> _pages = [
      ContactsScreen(),
      Chats(
        chats: [
          Chat(
              photoUri: '',
              id: '1',
              time: '11:15',
              lastMessage: 'not',
              name: 'cal')
        ],
      ),
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
}
