import 'package:flutter_test/flutter_test.dart';
import 'package:owl_chat/data/models/chats/chat_room.dart';

Future main() async {
  late final ChatRoom chat;
  chat = const ChatRoom(id: '15', userId1: '120', userId2: '200');

  chat.copyWith(
    totalMessage: 1,
  );
}
