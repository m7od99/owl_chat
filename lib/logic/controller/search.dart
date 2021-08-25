import '../event_handler/user_state.dart';

import '../../data/models/user.dart';

class SearchLogic {
  final UserState _user = UserState();

  static T search<T>(List<T> list, T item) {
    for (T i in list) {
      if (i == item) {
        return i;
      }
    }
    throw 'not found';
  }

  Future<OwlUser> getUserByEmail(String email) async {
    List<OwlUser> users = await _user.getUsers();

    for (var user in users) {
      if (user.email == email.trim()) {
        return user;
      }
    }
    return OwlUser(email: '', id: '', userName: '');
  }

  Future<OwlUser> getUserByUserName(String userName) async {
    List<OwlUser> users = await _user.getUsers();

    for (var user in users) {
      if (user.userName == userName) {
        return user;
      }
    }
    throw 'cant found';
  }
}
