import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/controller/notifications.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/pages/chats/chats_acreen.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';
import 'package:owl_chat/update/check_update.dart';

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

int currentIndex = 0;
Notifications notifications = Notifications();
CheckUpdate update = CheckUpdate();
final user = UserState();

class _ChatsScreenState extends State<ChatsScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    currentIndex = 0;
    update.isNewUpdate();
    notifications.token();
    user.updateOwlUser();
    user.getUserToken(user.userId);
    notifications.initMessaging();
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.detached || state == AppLifecycleState.paused) {
      user.updateOnChat('null');
    }
  }

  @override
  Widget build(BuildContext context) {
    void onTaped(index) {
      setState(() {
        currentIndex = index;
      });
    }

    List<Widget> _pages = [
      Chats(),
      SettingsScreen(),
    ];

    return WillPopScope(
      onWillPop: () async {
        //todo ask if want to exite from app
        return false;
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTaped,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: LocaleKeys.chats,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: LocaleKeys.settings,
            ),
          ],
          currentIndex: currentIndex,
        ),
        body: _pages.elementAt(currentIndex),
      ),
    );
  }
}
