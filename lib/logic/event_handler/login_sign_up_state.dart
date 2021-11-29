import 'package:flutter/widgets.dart';

// handle user log state
class LogState extends ChangeNotifier {
  String _password = '';
  String _email = '';
  String _userName = '';
  String _confirmPassword = '';

  String get password => _password;
  String get email => _email;
  String get userName => _userName;
  String get confirmPassword => _confirmPassword;

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setUserName(String userName) {
    _userName = userName;
    notifyListeners();
  }

  void serConfirmPassword(String confirm) {
    _confirmPassword = confirm;
    notifyListeners();
  }
}
