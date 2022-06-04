import 'dart:convert';
import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:owl_chat/data/data_controller/message_control/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/navigation/router.dart';
import 'package:owl_chat/notifications/notifications_channel.dart';
import 'package:owl_chat/helper/credentials.dart' as credentials;

import 'package:http/http.dart' as http;

import '../data/models/models.dart';
import '../logic/event_handler/user_state.dart';

/// A manager that responsible for the flow of notifications.
///
/// Also mange the permissions of specific chat that , allow to user make
///
/// more options for their [Chat] notifications.
class NotificationController {
  const NotificationController(this.awesomeNotifications);

  final AwesomeNotifications awesomeNotifications;

  ///The method thats need to be called first to use this class.
  Future startNotification() async {
    return awesomeNotifications.initialize(
      null,
      [
        NotificationChannelControl.basicNotificationChannel,
        NotificationChannelControl.messageNotificationChannel,
      ],
      channelGroups: [
        NotificationChannelControl.basicGroupe,
        NotificationChannelControl.messageGroupe,
      ],
    );
  }

  /// Convert user chat settings [ChatNotificationsSettings] to:
  ///
  ///List of [NotificationPermission] from [awesome_notifications]
  ///plugin
  List<NotificationPermission> _getPermissionFromChatNotificationSettings(
      ChatNotificationsSettings chatNotificationsSettings) {
    final List<NotificationPermission> permission = const [];

// when The Notification are not allowed , There are no permission.
    if (!chatNotificationsSettings.allow) {
      return permission;

      //
    } else if (chatNotificationsSettings.allow &&
        chatNotificationsSettings.sound &&
        chatNotificationsSettings.vibration) {
      return permissions;
      //
    } else if (chatNotificationsSettings.allow &&
        !chatNotificationsSettings.sound &&
        !chatNotificationsSettings.vibration) {
      return [
        ...permission,
        NotificationPermission.Alert,
        NotificationPermission.Light,
        NotificationPermission.Badge,
      ];
      //
    } else if (chatNotificationsSettings.allow &&
        chatNotificationsSettings.sound &&
        !chatNotificationsSettings.vibration) {
      return [
        ...permission,
        NotificationPermission.Alert,
        NotificationPermission.Light,
        NotificationPermission.Badge,
        NotificationPermission.Sound,
      ];
      //
    } else {
      return [
        ...permission,
        NotificationPermission.Alert,
        NotificationPermission.Light,
        NotificationPermission.Badge,
        NotificationPermission.Vibration,
      ];
    }
  }

  static Future getTokenThenSaveItToDataBase() async {
    final token = await UserControl().getToken();
    log(token.toString());
    await UserControl().saveTokenToDatabase(token!);

    FirebaseMessaging.instance.onTokenRefresh.listen(UserControl().saveTokenToDatabase);
  }

  ///set the permissions from [ChatNotificationsSettings].
  ///
  ///**Note:** Make sure to create the notification channel before use this method
  ///***with chat id as a key***
  Future<bool> setPermissionFromChatNotificationSettings({
    required ChatNotificationsSettings chatNotificationsSettings,
  }) async {
    final permission =
        _getPermissionFromChatNotificationSettings(chatNotificationsSettings);

    return awesomeNotifications.requestPermissionToSendNotifications(
      channelKey: chatNotificationsSettings.chatId,
      permissions: permission,
    );
  }

  ///Close the notifications when user see the [MessageModel]/s
  ///without taping the notifications.
  Future<void> closeSeenMessageNotifications() async {
    awesomeNotifications.displayedStream.listen((message) {
      router.addListener(() {
        if (message.payload != null && message.payload!['type'] == 'chat') {
          final chatId = message.payload!['chat'];

          //if user location is the chat room; cancel all notifications
          if (router.location == '/chat/$chatId') {
            if (chatId != null) {
              awesomeNotifications.cancelNotificationsByChannelKey(chatId);
            }
          }
        }
      });
    });
  }

  ///Display Notification when receive [MessageModel] from another user.
  ///
  ///**Note: You can custom the notifications in push notification said look at:**
  /// https://pub.dev/packages/awesome_notifications
  Future _displayMessageNotifications({
    required RemoteMessage message,
  }) async {
    // wait 1 second
    await Future.delayed(const Duration(milliseconds: 500));
    // see if the notification type is [MessageModel]
    if (message.data['type'] == 'chat') {
      // check the user path.

      final chat = await MessageControl().getSpecificChat(message.data['chat']);

      final settings = chat!.settings.firstWhere(
        (element) => element.userId == UserState().userId,
      );

      if (!settings.allow) {
        log('You mute messages from this chat');
        return;
      }

      if (router.location != '/chat/${message.data['chat']}') {
        awesomeNotifications.createNotificationFromJsonData(message.data);
      } else {
        log('user already on chat');
      }
    }
  }

  /// To display Notification from app like new version update.
  ///
  ///**Note: You can custom the notifications in push notification said look at:**
  /// https://pub.dev/packages/awesome_notifications
  Future _displayAppNotification({
    required RemoteMessage message,
  }) async {
    if (message.data['type'] == 'app') {
      awesomeNotifications.createNotificationFromJsonData(message.data);
    }
  }

  /// Create channels for user [ChatRoom]'s , to control display or cancel
  ///
  /// notification for specific chat.
  static Future createChatsRoomChannel(List<Chat> chats) async {
    for (final chat in chats) {
      await NotificationChannelControl.createMessageNotificationChannel(chat.id);
    }
  }

  ///Map user when 'tapping' on notification.
  Future mapActionNotification() async {
    awesomeNotifications.actionStream.listen((action) async {
      final payload = action.payload;

      if (payload == null) {
        log('payload is null');
        return;
      }
      log(payload.toString());
      //chat case
      if (payload['type'] == 'chat') {
        final chatId = payload['chat'];
        if (chatId == null) return;

        final chat = await MessageControl().getSpecificChat(chatId);

        if (chat == null) return;

        final bloc = MessageBloc(chat: chat);
        bloc.add(const MessageEvent.messagesReceived());

        router.go('/chat/${chat.id}', extra: bloc);
      }

      //app case
      if (payload['type'] == 'app') {}
    });
  }

  /// Display notification that coming from FCM.
  Future displayNotification() async {
    FirebaseMessaging.onMessage.listen((message) async {
      if (message.data['type'] == 'chat') {
        await _displayMessageNotifications(message: message);
      }
      if (message.data['type'] == 'app') {
        await _displayAppNotification(message: message);
      }
    });
  }
}

List<NotificationPermission> permissions = const [
  NotificationPermission.Alert,
  NotificationPermission.Sound,
  NotificationPermission.Badge,
  NotificationPermission.Vibration,
  NotificationPermission.Light,
  NotificationPermission.CriticalAlert,
  NotificationPermission.FullScreenIntent,
];

/// Using FCM Service to push Notification.
///
class PushNotificationService {
  /// Send notify when user send [MessageModel].
  ///
  /// It's should'nt push notification when other user's opened the [ChatRoom].
  static Future pushMessageNotification(MessageModel message) async {
    late final String? token;
    late final NotificationsModel notificationsModel;

    await Future.delayed(const Duration(milliseconds: 300));

    // check the other user location before send the notification.
    final otherUserAlreadyOnChat =
        await _isOtherUserOnChat(message.receiver, message.chatId!);

    log(otherUserAlreadyOnChat.toString());

    // if true no need to push notification.
    if (otherUserAlreadyOnChat) return;

    // get the other user token.
    token = await UserState().getUserToken(message.receiver);
    if (token == null) return;

    // create notification model data from the message.
    notificationsModel = createMessageNotificationModel(
      messageModel: message,
      token: token,
    );
    // try push notification. check if the notification sent.
    return HttpPushNotification.pushNotification(
      notificationModel: notificationsModel,
    );
  }

  /// Create [NotificationsModel] from [MessageModel] , to use it to push notification.
  ///
  /// token most be not null.
  static NotificationsModel createMessageNotificationModel({
    required MessageModel messageModel,
    required String token,
  }) {
    final _user = UserState();
    final photoUri = _user.photoUri ?? 'asset://assets/images/user.png';

    return NotificationsModel(
      data: Data(
        chat: messageModel.chatId!,
        content: Content(
          id: messageModel.chatId!.codeUnits.first,
          title: _user.userName,
          body: messageModel.text,
          summary: messageModel.text,
          showWhen: true,
          channelKey: messageModel.chatId!,
          notificationLayout: 'Messaging',
          largeIcon: photoUri,
          roundedLargeIcon: true,
          autoDismissible: true,
          payload: Payload(
            chat: messageModel.chatId,
            type: 'chat',
          ),
        ),
        type: 'chat',
      ),
      to: token,
      mutableContent: true,
      contentAvailable: true,
      priority: 'high',
    );
  }

  ///if the other user already on chat return true.
  static Future<bool> _isOtherUserOnChat(String otherUserId, String chatId) async {
    final String? otherUserLocation = await UserState().getOnChat(otherUserId);

    if (otherUserLocation == chatId) {
      return true;
    }
    return false;
  }
}

/// It's utility class that create FCM request.
///
/// To push notification you need to make sure you use valid token.
class HttpPushNotification {
  /// [NotificationsModel] must be not null.
  ///
  /// By using 'data' from FCM service ,We custom the notification and load more data.
  ///
  /// more info look at : https://firebase.google.com/docs/cloud-messaging/http-server-ref
  static Future<bool> pushNotification({
    required NotificationsModel notificationModel,
  }) async {
    late final bool isPush;
    try {
      //
      final response = await http.post(
        _fcmUri,
        headers: _header,
        body: jsonEncode(
          notificationModel.toJson(),
        ),
      );
      //
      if (response.statusCode == 200) {
        isPush = true;
        log('push successful');
      } else {
        isPush = false;
        log('push notification fell , ${response.statusCode}');
      }
    } catch (e) {
      log(e.toString());
    }

    return isPush;
  }

  static final _fcmUri = Uri.parse('https://fcm.googleapis.com/fcm/send');

  static final _header = const <String, String>{
    'Content-Type': 'application/json',
    'Authorization': 'key=${credentials.FCM_SERVER_KEY}',
  };
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  log("Handling a background message: ${message.messageId}");

  // Use this method to automatically convert the push data, in case you gonna use our data standard
  AwesomeNotifications().createNotificationFromJsonData(message.data);
}
