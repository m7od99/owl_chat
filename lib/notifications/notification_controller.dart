import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:owl_chat/data/models/chats/chat_notifications_settings.dart';

/// A manager that responsible for the flow of notifications.
///
/// Also mange the permissions of specific chat that , allow to user make
///
/// more options for their [Chat] notifications.
class NotificationController {
  /// Convert user chat settings [ChatNotificationsSettings] to:
  ///
  ///List of [NotificationPermission] from [awesome_notifications]
  ///plugin
  List<NotificationPermission> _getPermissionFromChatNotificationSettings(
      ChatNotificationsSettings chatNotificationsSettings) {
    final List<NotificationPermission> permission = [];

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
  Future<bool> setPermissionFromChatNotificationSettings(
      ChatNotificationsSettings chatNotificationsSettings) async {
    final permission =
        _getPermissionFromChatNotificationSettings(chatNotificationsSettings);

    return AwesomeNotifications().requestPermissionToSendNotifications(
        channelKey: chatNotificationsSettings.chatId, permissions: permission);
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
