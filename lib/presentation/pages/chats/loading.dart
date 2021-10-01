import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:owl_chat/logic/controller/notifications.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/pages/chats/chats_screen.dart';
import 'package:owl_chat/update/check_update.dart';

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

Notifications notifications = Notifications();
CheckUpdate update = CheckUpdate();
final user = UserState();

class _ChatsScreenState extends State<ChatsScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
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
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.detached || state == AppLifecycleState.paused) {
      user.updateOnChat('null');
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
            builder: (context) => AlertDialog(
                  title: Text('Do you want exits from app?'),
                  actions: [
                    GestureDetector(
                      child: Text(
                        'Yes',
                        style: TextStyle(fontSize: 16),
                      ),
                      onTap: () {
                        SystemNavigator.pop();
                      },
                    ),
                    GestureDetector(
                      child: Text(
                        'No',
                        style: TextStyle(fontSize: 16),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
            context: context);
        return true;
      },
      child: Scaffold(
        body: Chats(),
      ),
    );
  }
}
