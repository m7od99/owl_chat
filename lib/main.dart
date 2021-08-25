import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:owl_chat/presentation/theme/themes.dart';

import 'data/data_controller/message_control.dart';
import 'data/data_controller/user_control.dart';
import 'logic/event_handler/user_state.dart';
import 'my_app.dart';
import 'translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();

  AwesomeNotifications().initialize(
    // set the icon to null if you want to use the default app icon
    null,
    [
      NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          playSound: true,
          defaultColor: Color(0xFF9D50DD),
          ledColor: Colors.white)
    ],
  );

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  FirebaseMessaging.onMessage;

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print("Message data: ${message.data}");
    final notification = message.notification;

    if (notification != null) {
      print('Message also contained a notification: ${message.notification}');
      print(notification.title);
      print(notification.body);
    }
  });

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      fallbackLocale: Locale('en'),
      path: 'assets/translations',
      assetLoader: CodegenLoader(),
      child: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => MessageControl()),
        ChangeNotifierProvider(create: (context) => UserControl()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => UserState()),
      ], child: MyApp()),
    ),
  );
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
