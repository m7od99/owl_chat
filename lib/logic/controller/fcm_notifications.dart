import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:owl_chat/helper/credentials.dart' as credentials;
import 'package:owl_chat/logic/event_handler/user_state.dart';

class FCMNotifications {
  // ignore: constant_identifier_names
  // ignore: prefer_constructors_over_static_methods
  static FCMNotifications get instance => FCMNotifications();

  final _user = UserState();

  Future<void> send({
    required String title,
    required String body,
    required String toUserId,
    required String chatId,
    required int messageId,
  }) async {
    final String? token = await _user.getUserToken(toUserId);
    final onChat = await isOnChat(toUserId, chatId);
    final isSame = await isSameToken(token);

    if (token != null) {
      try {
        final http.Response res = await http.post(
          Uri.parse('https://fcm.googleapis.com/fcm/send'),
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Authorization': 'key=${credentials.FCM_SERVER_KEY}',
          },
          body: jsonEncode(
            {
              'priority': 'high',
              'data': {
                'content': {
                  'id': messageId,
                  'title': title,
                  'payload': <String, String>{
                    'type': 'chat',
                    'chat': chatId,
                  },
                  'body': body,
                  'largeIcon': UserState().photoUri ?? 'asset://assets/images/user.png',
                  'summary': body,
                  'channelKey': 'message_notifications',
                  'category': 'Message',
                  'autoDismissible': true,
                  'roundedLargeIcon': true,
                  'notificationLayout': 'Messaging',
                  "showWhen": true,
                  "privacy": "Private"
                },
                'click_action': 'FLUTTER_NOTIFICATION_CLICK',
                'type': 'chat',
                'chat': chatId,
              },
              'to': token,
              "mutable_content": true,
              "content_available": true,
            },
          ),
        );
        if (res.statusCode == 200) {
          log('send success');
        }
        log(res.statusCode.toString());
      } catch (e) {
        log(e.toString());
      }
    } else {
      if (token == null) {
        log('token is null');
      }
      if (isSame) {
        log('you try send message to you');
      }
      if (onChat) {
        log('he is already on the chat');
      }
      if (body.isEmpty) {
        log('cant send empty message');
      }
    }
  }

  Future<bool> isOnChat(String otherUserId, String chatId) async {
    final String? otherUserOnChat = await _user.getOnChat(otherUserId);
    if (otherUserOnChat == chatId) {
      return true;
    }
    return false;
  }

  // ignore: avoid_positional_boolean_parameters
  Future<bool> isSameToken(String? toToken) async {
    final myToken = await _user.getToken();
    if (myToken == toToken) {
      return true;
    }
    return false;
  }
}
