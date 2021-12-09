import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../logic/event_handler/settings.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = "SettingsScreen";

  @override
  Widget build(BuildContext context) {
    final settings = Provider.of<AppSettings>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: const Text('Settings'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: const Text('Chat font size'),
              trailing: Text('${settings.chatFontSize.toInt()}'),
            ),
          ],
        ),
      ),
    );
  }
}
