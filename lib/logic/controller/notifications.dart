import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/event_handler/chats_logic.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/navigation/router.dart';

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
          importance: NotificationImportance.Default,
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white,
        ),
        NotificationChannel(
          channelKey: 'high_importance_channel',
          channelName: 'High Importance Notifications',
          channelDescription: 'This channel is used for important notifications.',
          channelShowBadge: true,
          playSound: true,
          groupAlertBehavior: GroupAlertBehavior.All,
          importance: NotificationImportance.Max,
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white,
        ),
        NotificationChannel(
          channelKey: 'message_notifications',
          channelName: 'message notifications',
          channelDescription: 'Notification channel for messages',
          channelShowBadge: true,
          channelGroupKey: 'message_notifications',
          playSound: true,
          importance: NotificationImportance.Default,
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white,
        ),
      ],
      channelGroups: [
        NotificationChannelGroup(
          channelGroupkey: 'basic_channel',
          channelGroupName: 'Basic notifications',
        ),
        NotificationChannelGroup(
          channelGroupkey: 'high_importance_channel',
          channelGroupName: 'High Importance Notifications',
        ),
        NotificationChannelGroup(
          channelGroupkey: 'message_notifications',
          channelGroupName: 'message_notifications',
        ),
      ],
      debug: true,
    );

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  }

  /// handel the foreground message that come from Firebase messaging
  Future foregroundMessagingHandler() async {
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) async {
        log('Got a message whilst in the foreground!');
        log("Message data: ${message.data}");
        final notification = message.notification;

        if (notification != null) {
          await AwesomeNotifications().createNotification(
            content: NotificationContent(
              id: message.hashCode,
              showWhen: true,
              channelKey: 'message_notifications',
              groupKey: 'message_notifications',
              summary: notification.body,
              title: notification.title,
              body: notification.body,
              largeIcon: 'asset://assets/images/user.png',
              category: NotificationCategory.Message,
              autoDismissible: true,
              notificationLayout: NotificationLayout.Messaging,
            ),
          );
        }
      },
    );
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
    final RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      AwesomeNotifications().actionStream.listen((_) {
        handleMessage(initialMessage);
      });
    }
    // Also handle any interaction when the app is in the background via a
    // Stream listener

    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }

  Future handleMessage(RemoteMessage message) async {
    if (message.data['type'].toString() == 'chat') {
      final chat = await ChatsController().getSpecificChat(message.data['chat'] as String);

      final _user = UserState();

      final MessageBloc bloc = MessageBloc();

      bloc.add(UpdateChat(chat: chat!));
      bloc.add(
        OpenChat(
          chatId: chat.id,
          receiver: _user.otherId(chat),
          sender: _user.userId,
        ),
      );

      await _user.updateOnChat(chat.id);

      router.go(
        '/chat/${chat.id}',
        extra: bloc,
      );
    }
  }

  final notAllow = [];
  final allowWithoutSound = const [
    NotificationPermission.Alert,
    NotificationPermission.Badge,
    NotificationPermission.Vibration,
    NotificationPermission.Light,
  ];
  final allowWithSound = const [
    NotificationPermission.Alert,
    NotificationPermission.Sound,
    NotificationPermission.Badge,
    NotificationPermission.Vibration,
    NotificationPermission.Light,
  ];
}

// Declared as global, outside of any class
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  log("Handling a background message: ${message.messageId}");

  // Use this method to automatically convert the push data, in case you gonna use our data standard
  AwesomeNotifications().createNotificationFromJsonData(message.data);
}
