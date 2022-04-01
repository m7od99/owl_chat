import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:owl_chat/data/models/chats/chat_notifications_settings.dart';
import 'package:owl_chat/navigation/router.dart';
import 'package:owl_chat/notifications/notifications_channel.dart';

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
