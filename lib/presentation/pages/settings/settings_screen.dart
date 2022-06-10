import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = "SettingsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: const Text('Settings'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // ListTile(
              //   title: const Text('Chat font size'),
              //   trailing: Text('${settings.chatFontSize.toInt()}'),
              // ),
              ListTile(
                tileColor: Colors.grey,
                title: const Text('Notifications Settings'),
                leading: const Icon(Icons.notifications),
                onTap: () {
                  AwesomeNotifications().showNotificationConfigPage();
                },
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
