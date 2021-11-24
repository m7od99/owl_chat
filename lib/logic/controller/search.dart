import 'dart:developer';

import '../../data/models/user.dart';
import '../event_handler/user_state.dart';

class SearchLogic {
  Future<OwlUser?> getUserByEmail(String email) async {
    final UserState _user = UserState();

    final List<OwlUser> users = await _user.getUsers();

    for (final user in users) {
      if (user.email.toLowerCase() == email.trim().toLowerCase()) {
        return user;
      }
    }
  }

  static Future<OwlUser?> getUserByUserName(String userName) async {
    final UserState _user = UserState();

    final List<OwlUser> users = await _user.getUsers();

    for (final user in users) {
      if (user.userName.toLowerCase().trim() == userName.toLowerCase().trim()) {
        log(user.id);
        return user;
      }
    }
  }
}
