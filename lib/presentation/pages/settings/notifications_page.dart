import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owl_chat/logic/bloc/user_bloc/user_bloc.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  static const String id = 'notifications_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications '),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return Column(
                children: [
                  ListTile(
                    title: const Text('Allow Notifications'),
                    trailing: Switch.adaptive(
                      onChanged: (value) {
                        context.read<UserBloc>().add(const ToggleAllowNotification());
                      },
                      value:
                          state.user.userSettings.notificationsSetting.allowNotifications,
                    ),
                  ),
                  ListTile(
                    title: const Text('Allow Sound'),
                    trailing: Switch.adaptive(
                      onChanged: (value) {
                        context.read<UserBloc>().add(const ToggleSoundNotification());
                      },
                      value: state.user.userSettings.notificationsSetting.sound,
                    ),
                  ),
                  ListTile(
                    title: const Text('Allow Notifications on opened app'),
                    trailing: Switch.adaptive(
                      onChanged: (value) {
                        context
                            .read<UserBloc>()
                            .add(const ToggleDisplayNotificationOnOpenApp());
                      },
                      value: state.user.userSettings.notificationsSetting
                          .displayNotificationsOnForeground,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
