import 'package:cloud_firestore/cloud_firestore.dart';

import '../../data/data_controller/message_control.dart';
import '../../data/data_controller/user_control.dart';
import '../../data/models/auth/user.dart';
import '../../data/models/chats/chat.dart';

class ChatsController {
  final MessageControl _control = MessageControl();
  final UserControl _user = UserControl();

  ///create uniq id for chat room
  String createChatId(String otherUserId) {
    if (_user.userId.substring(0, 1).codeUnitAt(0) >
        otherUserId.substring(0, 1).codeUnitAt(0)) {
      return "$otherUserId${_user.userId}";
    } else {
      return "${_user.userId}$otherUserId";
    }
  }

  Iterable<QueryDocumentSnapshot<Object?>> getMyChats(List<QueryDocumentSnapshot> snap) {
    return snap.where(
      (element) => element['id'].toString().contains(_user.userId),
    );
  }

  // ignore: type_annotate_public_apis
  bool isChatting(List<QueryDocumentSnapshot> snap, String otherId) {
    return snap
        .where(
          (element) =>
              element['id'].toString().contains(_user.userId) &&
              element['id'].toString().contains(otherId),
        )
        .isNotEmpty;
  }

  List<Chat> getChats(Iterable<QueryDocumentSnapshot> data) {
    final List<Chat> chats = [];
    for (final chat in data) {
      final dynamic doc = chat.data();
      chats.add(Chat.fromMap(doc as Map<String, dynamic>));
    }

    return chats;
  }

  //hasChat(String otherId) {}

  Future<Chat?>? createChatRoom(OwlUser otherUser) async {
    if (otherUser.id.isEmpty) {
      return null;
    }
    final String otherUserId = otherUser.id;
    final String id = createChatId(otherUserId);

    final chat = Chat(
      time: Timestamp.now(),
      name: otherUser.userName,
      me: OwlUser(
        email: _user.email,
        userName: _user.userName,
        id: _user.userId,
      ),
      other: otherUser,
      photoUri: '',
      lastMessage: '',
      id: id,
    );

    await _control.createChat(chat);
    // await _control.addNewChatToUser(_user.userId, chat);
    // print('add chat to user is done');
    // await _user.addFriend(_user.userId, otherUser);
    // print('add friend to user is done');

    return chat;
  }
}
