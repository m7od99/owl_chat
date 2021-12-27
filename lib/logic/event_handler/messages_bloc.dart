// ignore_for_file: cast_nullable_to_non_nullable

import 'dart:async';
import 'dart:developer';

import '../../data/data_controller/message_control/message_control.dart';
import '../../data/models/chats/message.dart';

///  [MessagesState]
class MessagesBloc {
  final MessageControl _control;

  final StreamController<MessagesEvent> _streamEventControl;

  final StreamController<MessagesState> _streamStateControl;

  static final _instance = MessagesBloc._init();

  factory MessagesBloc() {
    return _instance;
  }

  MessagesBloc._init()
      : _control = MessageControl(),
        _streamStateControl = StreamController<MessagesState>(),
        _streamEventControl = StreamController<MessagesEvent>() {
    log('messages bloc is initialize');

    _streamEventControl.stream.listen(_mapEvent);
  }

  void _mapEvent(MessagesEvent event) {
    if (event is ReceiveMessageEvent) {}
  }

  Stream<List<Message>> getMessages(String chatId) {
    return _control.getMessages(chatId).map((snapshot) {
      return snapshot.docs.reversed.map<Message>((docs) {
        final message = Message.fromMap(docs.data() as Map<String, dynamic>);

        message.id = docs.id;
        return message;
      }).toList();
    });
  }

  void close() {
    _streamEventControl.close();
    _streamStateControl.close();
  }

  Stream get stream => _streamStateControl.stream;
}

abstract class MessagesEvent {}

class SendMessageEvent extends MessagesEvent {}

class ReceiveMessageEvent extends MessagesEvent {}

class MessagesState<Message> {}
