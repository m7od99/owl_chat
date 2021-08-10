import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// create an instance
FirebaseMessaging messaging = FirebaseMessaging.instance;
FlutterLocalNotificationsPlugin fltNotification = FlutterLocalNotificationsPlugin();

void initMessaging() async {
  var androiInit = AndroidInitializationSettings('app_icon'); //for logo
  var iosInit = IOSInitializationSettings();

  var initSetting = InitializationSettings(android: androiInit, iOS: iosInit);

  fltNotification = FlutterLocalNotificationsPlugin();
  await fltNotification.initialize(initSetting);
  var androidDetails = AndroidNotificationDetails(
    '1',
    'channelName',
    'channelDescription',
    playSound: true,
    importance: Importance.max,
    priority: Priority.high,
    showWhen: false,
  );

  var iosDetails = IOSNotificationDetails();
  var generalNotificationDetails = NotificationDetails(android: androidDetails, iOS: iosDetails);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    RemoteNotification notification = message.notification!;
    AndroidNotification? android = message.notification!.android;

    fltNotification.show(notification.hashCode, notification.title, notification.body, generalNotificationDetails);
  });
}
