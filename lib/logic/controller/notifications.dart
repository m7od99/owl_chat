import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';

class Notifications {
  //to handle remote notifications
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void initMessaging() async {
    FlutterLocalNotificationsPlugin fltNotification = FlutterLocalNotificationsPlugin();

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
    );

    var iosDetails = IOSNotificationDetails();
    var generalNotificationDetails = NotificationDetails(android: androidDetails, iOS: iosDetails);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification notification = message.notification!;
      //AndroidNotification? android = message.notification!.android;

      fltNotification.show(notification.hashCode, notification.title, notification.body, generalNotificationDetails);
    });
  }

  UserControl _control = UserControl();

  //get tokens form firebase nessaging
  Future<String?> getToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    return await messaging.getToken();
  }

  // get tokens then safe it in firestor
  void token() async {
    var token = await getToken();
    print(token);
    await _control.saveTokenToDatabase(token!);

    FirebaseMessaging.instance.onTokenRefresh.listen(_control.saveTokenToDatabase);
  }
}
