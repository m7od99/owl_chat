import 'dart:convert';
import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
  NotificationController(this.awesomeNotifications);

  final AwesomeNotifications awesomeNotifications;

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
    router.addListener(() {
      awesomeNotifications.displayedStream.listen((message) {
        if (message.payload != null && message.payload!['type'] == 'message') {
          final chatId = message.payload!['chatId'];

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
  Future displayMessageNotifications({
    required RemoteMessage message,
  }) async {
    // wait 3 second
    await Future.delayed(const Duration(seconds: 3));
    // see if the notification type is [MessageModel]
    if (message.data['type'] == 'message') {
      // check the user path.
      router.addListener(() {
        if (router.location != '/chat/${message.data['chatId']}') {
          awesomeNotifications.createNotificationFromJsonData(message.data);
        }
      });
    }
  }

  /// To display Notification from app like new version update.
  ///
  ///**Note: You can custom the notifications in push notification said look at:**
  /// https://pub.dev/packages/awesome_notifications
  Future displayAppNotification({
    required RemoteMessage message,
  }) async {
    if (message.data['type'] == 'app') {
      awesomeNotifications.createNotificationFromJsonData(message.data);
    }
  }

  /// Create channels for user [ChatRoom]'s , to control display or cancel
  ///
  /// notification for specific chat.
  Future createChatsRoomChannel(List<String> chatsId) async {
    for (final chatId in chatsId) {
      await NotificationChannelControl.createMessageNotificationChannel(chatId);
    }
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

    await Future.delayed(const Duration(seconds: 1));
    // check the other user location before send the notification.
    final otherUserAlreadyOnChat =
        await _isOtherUserOnChat(message.receiver, message.chatId!);

    // if true no need to push notification.
    if (otherUserAlreadyOnChat) return;

    // get the other user token.

    if (!otherUserAlreadyOnChat) {
      token = await UserState().getUserToken(message.receiver);
      // create notification model data from the message.
      if (token != null) {
        notificationsModel = createMessageNotificationModel(
          messageModel: message,
          token: token,
        );
        // try push notification. check if the notification sent.
        return HttpPushNotification.pushNotification(
          notificationModel: notificationsModel,
        );
      }
    }
  }

  /// Create [NotificationsModel] from [MessageModel] , to use it to push notification.
  ///
  /// token most be not null.
  static NotificationsModel createMessageNotificationModel({
    required MessageModel messageModel,
    required String token,
  }) {
    final photoUri = UserState().photoUri ?? 'asset://assets/images/user.png';

    return NotificationsModel(
      data: Data(
        chat: messageModel.chatId!,
        content: Content(
          id: messageModel.chatId!.codeUnits.first,
          title: messageModel.sender,
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
            type: 'message',
          ),
        ),
        type: 'message',
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
  /// By using Data from FCM service ,To custom the notification.
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
