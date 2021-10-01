import 'package:flutter/cupertino.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/chat.dart';
import 'package:owl_chat/data/models/user.dart';

class UserState extends ChangeNotifier {
  final _userControl = UserControl();
  OwlUser user = OwlUser(id: '', userName: '', email: '');

  Future<void> login(String email, String password) async {
    await _userControl.login(email, password);
    if (_userControl.isLogin) {
      print('login');
      await updateOwlUser();
    }
  }

  Future<void> updateOwlUser() async {
    if (_userControl.isLogin) {
      user.id = _userControl.userId;
      user.userName = userName;
      user.email = email;
      user.photoUri = photoUri;
      user.isOnline = true;
      user.tokens = await _userControl.getToken();
      await _userControl.updateUser(user);

      notifyListeners();
    }
  }

  Future updateOnChat(String chatId) async {
    user.onChat = chatId;
    notifyListeners();
    await updateOwlUser();
  }

  Future<void> signUp(String email, String password, String userName) async {
    await _userControl.signUp(email, password, userName);

    await updateOwlUser();
  }

  Future<List<OwlUser>> getUsers() async {
    dynamic data = await _userControl.getUsers();
    final docs = data.docs;

    List<OwlUser> users = [];
    for (final user in docs) {
      final data = user.data();
      users.add(OwlUser.fromMap(data));
    }

    return users;
  }

  Future getUserInfo(String id) async {
    await _userControl.getUserInfo(id);
  }

  Future logOut() async {
    user.isOnline = false;
    //  await _userControl.updateUser(user);
    await _userControl.signOut();
  }

  Future saveToken(String token) async {
    await _userControl.saveTokenToDatabase(token);
  }

  Future updatePhoto(String uri) async {
    user.photoUri = uri;
    await _userControl.updatePhoto(uri);
  }

  Future updateUser(OwlUser user) async {
    await _userControl.updateUser(user);
  }

  Future updateUserName(String newUserName) async {
    await _userControl.updateUserName(newUserName);
  }

  Future<String?> getToken() async {
    return await _userControl.getToken();
  }

  getUserToken(String id) async {
    await _userControl.getUserToken(id);
  }

  String get email => _userControl.email;
  String get userName => _userControl.userName;
  String get userId => _userControl.userId;
  bool get isLogin => _userControl.isLogin;
  String? get photoUri => _userControl.userUriPhoto;

  String otherName(Chat chat) {
    if (chat.me!.id == userId) {
      return chat.other!.userName;
    }
    return chat.me!.userName;
  }
}
