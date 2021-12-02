import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:getwidget/getwidget.dart';
import 'package:owl_chat/app/my_app.dart';
import 'package:owl_chat/presentation/widgets/profile_photo.dart';
import 'package:provider/provider.dart';

import '../../../logic/event_handler/user_state.dart';
import '../../widgets/sign_out_button.dart';
import '../settings/change_photo.dart';
import '../settings/language.dart';
import '../settings/settings_screen.dart';
import '../settings/theme_sw.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);

    return GFDrawer(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          GFDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black26,
            ),
            closeButton: Container(),
            currentAccountPicture: InkWell(
              onTap: () async {
                await Navigator.pushNamed(context, ChangePhoto.id);
              },
              child: const ProfilePhoto(size: 80),
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
          ListTile(
            title: const Text('About'),
            trailing: const Icon(Icons.info_outline),
            onTap: () {
              navigatorKey.currentState!.push(
                MaterialPageRoute(
                  builder: (_) {
                    return const AboutPage();
                  },
                ),
              );
            },
          ),
          const LogoutButton()
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: const [
                Text(
                  'OwlChat Project',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'version 0.0.1 alpha',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 50),
                Text('Owl Chat is App made by ')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
