import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/event_handler/settings.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = "SettingsScreen";

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<AppSettings>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text('Chat font size'),
              trailing: Text('${settings.chatFontSize.toInt()}'),
            ),
          ],
        ),
      ),
    );
  }
}
