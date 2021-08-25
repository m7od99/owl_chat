import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/user.dart';

class ChatsController {
  final MessageControl _control = MessageControl();
  final UserControl _user = UserControl();

  String createChatId(String otherUserId) {
    return _user.userId.length >= otherUserId.length ? _user.userId + otherUserId : otherUserId + _user.userId;
  }

  getMyChats(List<QueryDocumentSnapshot> snap) {
    return snap.where(
      (element) => element['id'].toString().contains(_user.userId),
    );
  }

  bool isChatd(List<QueryDocumentSnapshot> snap, otherId) {
    return snap.where((element) => element['id'].toString().contains(_user.userId) && element['id'].toString().contains(otherId)).isNotEmpty;
  }

  getChats(Iterable<QueryDocumentSnapshot> data) {
    List<Chat> chats = [];
    for (var chat in data) {
      dynamic doc = chat.data();
      chats.add(Chat.fromMap(doc));
    }

    return chats;
  }

  hasChat(String otherId) {}

  createChatRoom(OwlUser otherUser) async {
    if (otherUser.id.isEmpty) return;
    String otherUserId = otherUser.id;
    String id = createChatId(otherUserId);

    final chat = Chat(
      time: Timestamp.now(),
      name: otherUser.userName,
      me: OwlUser(
        email: _user.email,
        userName: _user.userName,
        id: _user.userId,
        tokens: await FirebaseMessaging.instance.getToken(),
      ),
      other: otherUser,
      photoUri: '',
      lastMessage: '',
      id: id,
    );

    await _control.createChat(chat);
    await _control.addNewChatToUser(_user.userId, chat);
    print('add chat to user is done');
    await _user.addFriend(_user.userId, otherUser);
    print('add friend to user is done');

    return chat;
  }
}
