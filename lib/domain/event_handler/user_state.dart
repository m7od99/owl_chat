import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/data/models/user.dart';

class UserState {
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

      final user = OwlUser(email: email, userName: userName);
      user.id = _control.userId;

      await _control.saveUser(user);

      return user;
    } else
      throw 'not sign up';
  }
}
