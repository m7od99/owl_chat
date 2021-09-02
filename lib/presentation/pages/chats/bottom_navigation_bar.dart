import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/logic/controller/notifications.dart';
import 'package:owl_chat/presentation/pages/chats/chats_acreen.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import "package:owl_chat/translations/locale_keys.g.dart";
import 'package:fluent_ui/fluent_ui.dart' as fl;

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

int currentIndex = 0;
var notifications = Notifications();
UserControl _control = UserControl();

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  void initState() {
    notifications.token();
    UserControl().getUserToken(_control.userId);
    notifications.initMessaging();
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
      //todo contacts page..
      //  ContactsScreen(),
      Chats(),
      SettingsScreen(),
    ];

    return WillPopScope(
      onWillPop: () async {
        if (currentIndex == 0) {
          return false;
        }
        setState(() {
          currentIndex = 0;
        });
        return true;
      },
      child: Scaffold(
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
                fl.FluentIcons.chat_solid,
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
      ),
    );
  }
}
