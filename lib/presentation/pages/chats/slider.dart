import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:getwidget/getwidget.dart';
import 'package:provider/provider.dart';

import '../../../logic/event_handler/user_state.dart';
import '../../widgets/change_photo.dart';
import '../../widgets/language.dart';
import '../../widgets/sign_out_button.dart';
import '../../widgets/theme_sw.dart';
import '../settings/settings_screen.dart';

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
              child: const GFAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
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
    );
  }
}
