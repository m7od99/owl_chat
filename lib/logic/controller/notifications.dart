import 'dart:convert';
import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/event_handler/chats_logic.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/navigation/router.dart';

import '../../data/data_controller/user_control.dart';

class Notifications {
  final UserControl _control = UserControl();

  Future selectNotification(String payload) async {}

  /// initialize notifications
  ///
  ///
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
          onlyAlertOnce: true,
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
    await foregroundMessagingHandler();
    await setupInteractedMessage();
  }

  /// handel the foreground message that come from Firebase messaging
  Future foregroundMessagingHandler() async {
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) async {
        log('Got a message whilst in the foreground!');
        //    log("Message data: ${message.data}");

        final notification = message.notification;
        print(notification);

        late final Map<String, dynamic>? content;
        if (message.data['content'] != null) {
          content =
              jsonDecode(message.data['content'] as String) as Map<String, dynamic>?;
        } else {
          content = null;
        }

        final String? chatMessage = content?['payload']['chat'] as String?;

        String location = router.location;

        if ('/chat/$chatMessage' != location) {
          if (notification != null) {
            await AwesomeNotifications().createNotification(
              content: NotificationContent(
                id: 10,
                showWhen: true,
                wakeUpScreen: true,
                payload: {
                  'chat': content?['payload']?['chat'] as String? ?? '',
                },
                channelKey: 'message_notifications',
                groupKey: 'message_notifications',
                summary: notification.body,
                title: notification.title,
                body: notification.body,
                roundedLargeIcon: true,
                largeIcon:
                    content?['largeIcon'] as String? ?? 'asset://assets/images/user.png',
                category: NotificationCategory.Message,
                autoDismissible: true,
                notificationLayout: NotificationLayout.Messaging,
              ),
            );
          } else {
            AwesomeNotifications().createNotificationFromJsonData(message.data);
          }
        } else {
          AwesomeNotifications().createNotificationFromJsonData(message.data);
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
    AwesomeNotifications().actionStream.listen((receivedNotification) async {
      await _handelMessage(receivedNotification);
    });
  }

  Future<void> _handelMessage(ReceivedAction receivedNotification) async {
    final chatId = receivedNotification.payload?['chat'];

    if (chatId != null) {
      print(chatId);
      final chat = await ChatsController().getSpecificChat(chatId);
      if (chat != null) {
        final MessageBloc bloc = MessageBloc(chat: chat);
        bloc.add(const MessageEvent.messagesReceived());

        await UserState().updateOnChat(chat.id);

        if (router.location != '/chat/${chat.id}') {
          router.go(
            '/chat/${chat.id}',
            extra: bloc,
          );
        } else {
          log('you in chat already');
        }
      }
    }
  }
}

// Declared as global, outside of any class
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  log("Handling a background message: ${message.messageId}");

  if (!AwesomeStringUtils.isNullOrEmpty(message.notification?.title,
          considerWhiteSpaceAsEmpty: true) ||
      !AwesomeStringUtils.isNullOrEmpty(message.notification?.body,
          considerWhiteSpaceAsEmpty: true)) {
    await AwesomeNotifications().createNotificationFromJsonData(message.data);
  } else {
    await AwesomeNotifications().createNotificationFromJsonData(message.data);
  }
}

class FlutterNotifications {
  Future init() async {
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: _selectNotification,
    );

    final AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'Message_Channel',
      'Message',
      importance: Importance.max,
      priority: Priority.high,
    );

    final NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidNotificationDetails);

    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      if (notification != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          platformChannelSpecifics,
          payload: message.data['chat'] as String? ?? '',
        );
      }
    });

    setupInteractedMessage();
  }

  void _selectNotification(String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');

      if (payload.isNotEmpty) {
        final chat = await ChatsController().getSpecificChat(payload);
        if (chat != null) {
          final _user = UserState();

          final MessageBloc bloc = MessageBloc(chat: chat);

          bloc.add(const MessageEvent.messagesReceived());

          await _user.updateOnChat(chat.id);

          router.go(
            '/chat/${chat.id}',
            extra: bloc,
          );
        }
      }
    }
  }

  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      handleMessage(initialMessage);
    }
    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }

  Future handleMessage(RemoteMessage message) async {
    if (message.data['type'].toString() == 'chat') {
      final chat =
          await ChatsController().getSpecificChat(message.data['chat'] as String);

      final _user = UserState();

      final MessageBloc bloc = MessageBloc(chat: chat!);

      bloc.add(const MessageEvent.messagesReceived());

      await _user.updateOnChat(chat.id);

      router.go(
        '/chat/${chat.id}',
        extra: bloc,
      );
    }
  }
}
