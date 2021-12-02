import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../logic/controller/notifications.dart';
import '../../../logic/event_handler/user_state.dart';
import 'chats_screen.dart';

class ChatsScreen extends StatefulWidget {
  static const String id = 'ChatsScreen';

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

Notifications notifications = Notifications();
final user = UserState();

class _ChatsScreenState extends State<ChatsScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    notifications.getTokenThenSaveItToDataBase();
    user.updateOwlUser();
    notifications.foregroundMessagingHandler();

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

    if (state == AppLifecycleState.detached ||
        state == AppLifecycleState.paused) {
      user.updateOnChat('null');
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
          builder: (context) => AlertDialog(
            title: const Text('Do you want exits from app?'),
            actions: [
              GestureDetector(
                child: const Text(
                  'Yes',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
              GestureDetector(
                child: const Text(
                  'No',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          context: context,
        );
        return true;
      },
      child: const Chats(),
    );
  }
}
