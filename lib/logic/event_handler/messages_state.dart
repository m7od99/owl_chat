import 'dart:async';

import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/models/message.dart';

///  [MessagesState]
class MessagesState {
  late final MessageControl _control;

  static final _instance = MessagesState._init();

  factory MessagesState() {
    return _instance;
  }

  MessagesState._init() {
    _control = MessageControl();
  }

  List<Message> getMessages(String chatId) {
    final docs = _control.getMessages(chatId);

    final List<Message> _messages = [];

    docs.map((map) {
      final docs = map.docs.reversed;
      docs.map((snap) {
        final data = snap.data();
        if (data != null) {
          _messages.add(Message.fromMap(data as Map<String, dynamic>));
        }
      });
    });
    return _messages;
  }
}
