import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:owl_chat/data/models/chats/chat.dart';
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
    required Chat chat,
  }) async {
    final String? token = await _user.getUserToken(toUserId);
    final onChat = await isOnChat(toUserId, chat.id);

    if (token != null && body.isNotEmpty && !onChat) {
      try {
        final http.Response res = await http.post(
          Uri.parse('https://fcm.googleapis.com/fcm/send'),
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Authorization': 'key=${credentials.FCM_SERVER_KEY}',
          },
          body: jsonEncode(
            {
              'notification': <String, dynamic>{
                'title': title,
                'body': body,
                'click_action': 'FLUTTER_NOTIFICATION_CLICK',
              },
              'priority': 'high',
              'data': {
                'click_action': 'FLUTTER_NOTIFICATION_CLICK',
                'type': 'chat',
                'chat': chat.toMap(),
              },
              'to': token,
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
      log('cant get token');
    }
  }

  Future<bool> isOnChat(String id, String chatId) async {
    final String? onChat = await _user.getOnChat(id);
    if (onChat == chatId) {
      return true;
    }
    return false;
  }
}
