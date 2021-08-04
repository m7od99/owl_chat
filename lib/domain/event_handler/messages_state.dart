import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/user.dart';
import 'package:owl_chat/helper/helper.dart';

class MessagesState {
  final MessageControl _control = MessageControl();
  final UserControl _user = UserControl();

  String createChatId(String otherUserId) {
    return _user.userId.length > otherUserId.length
        ? _user.userId + otherUserId
        : otherUserId + _user.userId;
  }

  Future<List<Chat>> getChats() async {
    QuerySnapshot snap = await _control.getChats(_user.userId);

    dynamic data = snap.docs;
    List<Chat> chats = [];

    for (var chat in data) {
      chats.add(
        Chat.fromMap(
          chat.data(),
        ),
      );
    }

    return chats;
  }

  createChatRoom(OwlUser otherUser) async {
    String otherUserId = otherUser.id;
    String id = createChatId(otherUserId);

    final chat = Chat(
      time: Helper.format(Timestamp.now()),
      name: otherUser.userName,
      photoUri: '',
      lastMessage: '',
      id: id,
    );

    await _control.createChat(chat);
    return chat;
  }
}
