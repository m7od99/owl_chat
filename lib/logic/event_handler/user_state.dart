import 'package:flutter/cupertino.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/user.dart';

class UserState extends ChangeNotifier {
  final _userControl = UserControl();
  List<OwlUser> users = [];

  Future<void> login(String email, String password) async {
    await _userControl.login(email, password);
    if (_userControl.isLogin) {
      print('login');
    }
  }

  Future<OwlUser> signUp(String email, String password, String userName) async {
    await _userControl.signUp(email, password, userName);

    if (_userControl.isLogin) {
      print("sign up");

      String id = _userControl.userId;
      final user = OwlUser(email: email, userName: userName, id: id);

      user.isOnline = true;

      await _userControl.saveUser(user);

      return user;
    } else
      throw 'some things go wrong';
  }

  Future<List<OwlUser>> getUsers() async {
    dynamic data = await _userControl.getUsers();
    final docs = data.docs;

    List<OwlUser> users = [];
    for (var user in docs) {
      dynamic data = user.data();
      users.add(OwlUser.fromMap(data));
    }
    this.users = users;

    return users;
  }

  logOut() async {
    await _userControl.updateUser(OwlUser(
      email: _userControl.email,
      userName: _userControl.userName,
      id: _userControl.userId,
      isOnline: false,
    ));
    await _userControl.signOut();
  }

  void updateUser() {}

  updatePhoto(String uri) {}
}
