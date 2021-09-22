import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';

class Notifications {
  //to handle remote notifications
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future initMessaging() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print("Message data: ${message.data}");
      final notification = message.notification;

      if (notification != null) {
        print('Message also contained a notification: ${message.notification}');
        print(notification.title);
        print(notification.body);
        AwesomeNotifications().createNotificationFromJsonData(message.data);
      }
    });
  }

  final UserControl _control = UserControl();

  //get tokens form firebase messaging

  // get tokens then safe it in firestore
  Future token() async {
    final token = await _control.getToken();
    print(token);
    await _control.saveTokenToDatabase(token!);

    FirebaseMessaging.instance.onTokenRefresh
        .listen(await _control.saveTokenToDatabase);
  }
}
