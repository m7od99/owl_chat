import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/presentation/pages/chats/chats_acreen.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import "package:owl_chat/translations/locale_keys.g.dart";

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

int currentIndex = 0;

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  void initState() {
    token();
    UserControl().getUserToken(_control.userId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void onTaped(index) {
      setState(() {
        currentIndex = index;
      });
    }

    List<Widget> _pages = [
      //  ContactsScreen(),
      Chats(),
      SettingsScreen(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTaped,
        type: BottomNavigationBarType.fixed,
        items: [
          //  BottomNavigationBarItem(
          //    icon: Icon(
          //    Icons.account_circle,
          //),
          //label: LocaleKeys.contacts.tr(),
          //),
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

UserControl _control = UserControl();

Future<String?> getToken() async {
  return await FirebaseMessaging.instance.getToken();
}

void token() async {
  var token = await getToken();
  print(token);
  await _control.saveTokenToDatabase(token!);

  FirebaseMessaging.instance.onTokenRefresh.listen(_control.saveTokenToDatabase);
}
