import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:owl_chat/helper/helper.dart';

import '../../data/data_controller/user_control.dart';
import '../../data/models/auth/user.dart';
import '../../data/models/chats/chat.dart';

class UserState extends ChangeNotifier {
  factory UserState() {
    return _instance;
  }

  static final UserState _instance = UserState._internal();

  UserState._internal() {
    user = OwlUser(id: '', userName: '', email: '');
  }

  final _userControl = UserControl();
  late OwlUser user;

  Future<void> login(String email, String password) async {
    await _userControl.login(email, password);
    if (_userControl.isLogin) {
      log('login');
      await saveUser();
    }
  }

  Future<void> updateOwlUser() async {
    if (_userControl.isLogin) {
      //  final loadUser = await _userControl.loadUser();

      user.id = _userControl.userId;
      user.userName = userName;
      user.email = email;
      user.photoUri = photoUri;
      user.tokens = await _userControl.getToken();
      await _userControl.updateUser(user);

      notifyListeners();
    }
  }

  Future saveUser() async {
    if (_userControl.isLogin) {
      user.id = _userControl.userId;
      user.userName = userName;
      user.email = email;
      user.photoUri = photoUri;
      user.isOnline = true;
      user.tokens = await _userControl.getToken();

      await _userControl.saveUser(user);

      notifyListeners();
    }
  }

  Future updateOnChat(String chatId) async {
    user.onChat = chatId;
    //  notifyListeners();
    await _userControl.updateOnChat(chatId);
    log('update on chat');
  }

  // ignore: avoid_positional_boolean_parameters
  Future updateIsOnline(bool isOnline) async {
    user.isOnline = isOnline;
    log('update is Online');

    await _userControl.updateIsOnline(isOnline);
  }

  Future updateLaseSeen(Timestamp time) async {
    final lastSeen = Helper.format(time);

    log('update last seen');

    await _userControl.updateLaseSeen(lastSeen);
  }

  Future<void> signUp(String email, String password, String userName) async {
    await _userControl.signUp(email, password, userName);

    await saveUser();
  }

  Future<List<OwlUser>> getUsers() async {
    final dynamic data = await _userControl.getUsers();
    final docs = data.docs;

    final List<OwlUser> users = [];
    for (final user in docs) {
      final data = user.data();
      users.add(OwlUser.fromMap(data as Map<String, dynamic>));
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
    notifyListeners();
  }

  Future updateUser(OwlUser user) async {
    await _userControl.updateUser(user);
  }

  Future updateUserName(String newUserName) async {
    await _userControl.updateUserName(newUserName);
  }

  Future<String?> getToken() async {
    return _userControl.getToken();
  }

  Future<String?> getOnChat(String id) {
    return _userControl.getUserOnChat(id);
  }

  Future<String?> getUserToken(String id) async {
    final String? token = await _userControl.getUserToken(id);

    return token;
  }

  String get email => _userControl.email;
  String get userName => _userControl.userName;
  String get userId => _userControl.userId;
  bool get isLogin => _userControl.isLogin;
  String? get photoUri => _userControl.userUriPhoto;

  String otherName(Chat chat) {
    if (chat.other.id == userId && chat.me.id == userId) {
      return userName;
    } else if (chat.other.id != userId) {
      return chat.other.userName;
    }
    return chat.me.userName;
  }

  String otherId(Chat chat) {
    if (chat.other.id == userId && chat.me.id == userId) {
      return userId;
    } else if (chat.other.id != userId) {
      return chat.other.id;
    }
    return chat.me.id;
  }
}
