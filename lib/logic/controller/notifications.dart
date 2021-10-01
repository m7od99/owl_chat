import 'dart:ui';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';

class Notifications {
  //to handle remote notifications
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  final UserControl _control = UserControl();

  Future startNotification() async {
    await AwesomeNotifications().initialize(
      // set the icon to null if you want to use the default app icon
      null,
      [
        NotificationChannel(
            channelKey: 'basic_channel',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            channelShowBadge: true,
            playSound: true,
            defaultColor: Color(0xFF9D50DD),
            ledColor: Colors.white)
      ],
    );

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  }

  Future initMessaging() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print("Message data: ${message.data}");
      final notification = message.notification;

      if (notification != null) {
        print('Message also contained a notification: ${message.notification}');
        print(notification.title);
        print(notification.body);

        AwesomeNotifications().createNotification(
          content: NotificationContent(
            id: 10,
            channelKey: 'basic_channel',
            title: notification.title,
            body: notification.body,
            notificationLayout: NotificationLayout.BigText,
          ),
        );
        //  AwesomeNotifications().createNotificationFromJsonData(message.data);
      }
    });
  }

  // get tokens then safe it in firestore
  Future token() async {
    final token = await _control.getToken();
    print(token);
    await _control.saveTokenToDatabase(token!);

    FirebaseMessaging.instance.onTokenRefresh.listen(await _control.saveTokenToDatabase);
  }
}

// Declared as global, outside of any class
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");

  // Use this method to automatically convert the push data, in case you gonna use our data standard
  AwesomeNotifications().createNotificationFromJsonData(message.data);
}
