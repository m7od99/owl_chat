import 'package:flutter/cupertino.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/user.dart';

class UserState extends ChangeNotifier {
  final _control = UserControl();

  Future<void> login(String email, String password) async {
    await _control.login(email, password);
    if (_control.isLogin) {
      print('login');
    }
  }

  Future<OwlUser> signUp(String email, String password, String userName) async {
    await _control.signUp(email, password, userName);

    if (_control.isLogin) {
      print("sign up");

      String id = _control.userId;
      final user = OwlUser(email: email, userName: userName, id: id);

      user.isOnline = true;

      await _control.saveUser(user);

      return user;
    } else
      throw 'some things go wrong';
  }

  getUsers() async {
    dynamic data = await _control.getUsers();
    final docs = data.docs;

    List<OwlUser> users = [];

    for (var user in docs) {
      dynamic data = user.data();
      users.add(OwlUser.fromMap(data));
    }

    return users;
  }
}
