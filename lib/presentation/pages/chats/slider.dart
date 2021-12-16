import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/presentation/pages/settings/about_page.dart';
import 'package:owl_chat/presentation/pages/settings/change_photo.dart';
import 'package:owl_chat/presentation/pages/settings/notifications_page.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import 'package:owl_chat/presentation/widgets/profile_photo.dart';
import 'package:provider/provider.dart';

import '../../../logic/event_handler/user_state.dart';
import '../settings/theme_sw.dart';
import 'widgets/sign_out_button.dart';

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
                context.goNamed(ChangePhoto.id);
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
              context.goNamed(ThemePage.id);
            },
          ),
          ListTile(
            title: const Text('Language'),
            trailing: const Icon(Icons.language),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Notifications'),
            trailing: const Icon(Icons.notifications),
            onTap: () {
              //    context.goNamed(NotificationsPage.id);
              AwesomeNotifications().showAlarmPage();
            },
          ),
          ListTile(
            title: const Text('Settings'),
            trailing: const Icon(Icons.settings),
            onTap: () {
              context.goNamed(SettingsScreen.id);
            },
          ),
          ListTile(
            title: const Text('About'),
            trailing: const Icon(Icons.info_outline),
            onTap: () {
              context.goNamed(AboutPage.id);
            },
          ),
          const LogoutButton()
        ],
      ),
    );
  }
}
