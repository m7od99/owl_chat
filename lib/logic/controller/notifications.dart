import 'dart:developer';
import 'dart:ui';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';

import '../../data/data_controller/user_control.dart';

class Notifications {
  final FirebaseMessaging messaging = FirebaseMessaging.instance;
  final UserControl _control = UserControl();

  Future selectNotification(String payload) async {}

  /// initialize notifications
  ///
  ///
  ///its also handle the background messages from firebase messaging
  Future startNotifications() async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          channelShowBadge: true,
          playSound: true,
          importance: NotificationImportance.Max,
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white,
        ),
        NotificationChannel(
          channelKey: 'high_importance_channel',
          channelName: 'High Importance Notifications',
          channelDescription: 'This channel is used for important notifications.',
          channelShowBadge: true,
          playSound: true,
          importance: NotificationImportance.Max,
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white,
        ),
      ],
    );

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  }

  /// handel the foreground message that come from Firebase messaging
  Future foregroundMessagingHandler() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      log('Got a message whilst in the foreground!');
      log("Message data: ${message.data}");
      final notification = message.notification;

      if (notification != null) {
        log('Message also contained a notification: ${message.notification}');
        log(notification.title.toString());
        log(notification.body.toString());

        AwesomeNotifications().createNotification(
          content: NotificationContent(
            id: 10,
            showWhen: true,
            channelKey: 'high_importance_channel',
            title: notification.title,
            body: notification.body,
            notificationLayout: NotificationLayout.BigText,
          ),
        );
      }
    });
  }

  /// get token then save it in database
  Future getTokenThenSaveItToDataBase() async {
    final token = await _control.getToken();
    log(token.toString());
    await _control.saveTokenToDatabase(token!);

    FirebaseMessaging.instance.onTokenRefresh.listen(_control.saveTokenToDatabase);
  }

  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    final RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      AwesomeNotifications().actionStream.listen((_) {
        _handleMessage(initialMessage);
      });
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    if (message.data['type'] == 'chat') {
      Get.to(
        const ChatScreen(),
        arguments: Chat.fromJson(message.data['chat'] as String),
      );
    }
  }
}

// Declared as global, outside of any class
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  log("Handling a background message: ${message.messageId}");

  // Use this method to automatically convert the push data, in case you gonna use our data standard
  AwesomeNotifications().createNotificationFromJsonData(message.data);
}
