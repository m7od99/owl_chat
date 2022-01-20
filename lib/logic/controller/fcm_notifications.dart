import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/helper/credentials.dart' as credentials;
import 'package:owl_chat/logic/event_handler/user_state.dart';

class FCMNotifications {
  // ignore: constant_identifier_names
  // ignore: prefer_constructors_over_static_methods
  static FCMNotifications get instance => FCMNotifications();

  final _user = UserControl();

  Future<void> send({
    required String title,
    required String body,
    required String toUserId,
    required String chatId,
    required int messageId,
  }) async {
    final tokens = await _user.getUserTokens(toUserId);
    print(tokens);
    final onChat = await isOnChat(toUserId, chatId);

    if (tokens != null && tokens.isNotEmpty) {
      for (final token in tokens) {
        if (!onChat && body.isNotEmpty) {
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
              log('send success to :$token');
            }
            log(res.statusCode.toString());
          } catch (e) {
            log(e.toString());
          }
        } else if (onChat) {
          log('he is already on the chat');
        } else {
          log('cant send empty message');
        }
      }
    } else {
      log('tokens is null');
    }
  }

  Future<bool> isOnChat(String otherUserId, String chatId) async {
    final String? otherUserOnChat = await UserState().getOnChat(otherUserId);
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
