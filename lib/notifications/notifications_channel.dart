import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationChannelControl {
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

  static void createMessageNotificationChannel(String chatId) {
    AwesomeNotifications().setChannel(
      NotificationChannel(
        channelKey: chatId,
        channelName: 'message notifications',
        channelDescription: 'Notification channel for messages',
        channelShowBadge: true,
        channelGroupKey: 'message_notifications',
        playSound: true,
        onlyAlertOnce: true,
        importance: NotificationImportance.Default,
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white,
      ),
    );
  }
}
