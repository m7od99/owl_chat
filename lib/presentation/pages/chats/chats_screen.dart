import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:owl_chat/presentation/widgets/search_for_users.dart';
import 'package:provider/provider.dart';

import '../../../data/data_controller/message_control.dart';
import '../../../logic/event_handler/chats_logic.dart';
import '../../../logic/event_handler/user_state.dart';
import '../../widgets/chats_stream.dart';
import '../../widgets/language.dart';
import '../../widgets/searching_by_name.dart';
import '../../widgets/sign_out_button.dart';
import '../../widgets/theme_sw.dart';
import '../settings/settings_screen.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    final control = Provider.of<MessageControl>(context);
    final user = Provider.of<UserState>(context);
    final _chats = ChatsController();
    final stream = control.getChats(user.userId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Chats'),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, SearchByName.id);
              },
            )
          ],
        ),
      ),
      body: ChatsStream(stream: stream, chats: _chats, user: user),
      drawer: GFDrawer(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black26,
              ),
              closeButton: Container(),
              currentAccountPicture: const GFAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    user.userName,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    user.email,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Theme'),
              trailing: const Icon(Icons.color_lens_outlined),
              onTap: () {
                Navigator.pushNamed(context, ThemePage.id);
              },
            ),
            ListTile(
              title: const Text('Language'),
              trailing: const Icon(Icons.language),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Language(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Notifications'),
              trailing: const Icon(Icons.notifications),
              onTap: () {
                AwesomeNotifications().showNotificationConfigPage();
              },
            ),
            ListTile(
              title: const Text('Settings'),
              trailing: const Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, SettingsScreen.id);
              },
            ),
            const ListTile(
              title: Text('About'),
              trailing: Icon(Icons.info_outline),
            ),
            const LogoutButton()
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20),
        child: FloatingActionButton(
          backgroundColor: Colors.blueGrey[400],
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Search(),
              ),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
