import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import '../data/models/models.dart';
import '../logic/event_handler/user_state.dart';

///
class NotificationChannelControl {
  /// A basic Notification channel with default permissions.
  static final NotificationChannel basicNotificationChannel = NotificationChannel(
    channelKey: 'basic_channel',
    channelName: 'Basic notifications',
    channelDescription: 'Notification channel for basic tests',
    channelShowBadge: true,
    playSound: true,
    importance: NotificationImportance.Default,
    defaultColor: const Color(0xFF9D50DD),
    ledColor: Colors.white,
  );

  static final NotificationChannel messageNotificationChannel = NotificationChannel(
    channelKey: 'message_channel',
    channelName: 'message notifications',
    channelDescription: 'Notification channel for message',
    channelShowBadge: true,
    playSound: true,
    importance: NotificationImportance.Default,
    defaultColor: const Color(0xFF9D50DD),
    ledColor: Colors.white,
  );

  ///
  static final basicGroupe = NotificationChannelGroup(
    channelGroupName: 'basic_groupe',
    channelGroupkey: 'basic_channel_groupe',
  );

  ///
  static final messageGroupe = NotificationChannelGroup(
    channelGroupName: 'message_groupe',
    channelGroupkey: 'message_channel_groupe',
  );

  /// Its create Notification channel for specific [Chat].
  ///
  /// Required the chat id , its should use it as a Key to access
  /// channel .
  static Future<void> createMessageNotificationChannel(Chat chat) async {
    await AwesomeNotifications().setChannel(
      NotificationChannel(
        channelKey: chat.id,
        channelName: UserState().otherName(chat),
        channelDescription: 'Notification channel for messages',
        channelShowBadge: true,
        channelGroupKey: chat.id,
        playSound: true,
        onlyAlertOnce: true,
        importance: NotificationImportance.Max,
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white,
      ),
    );
  }
}
