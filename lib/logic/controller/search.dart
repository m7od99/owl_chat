import 'package:flutter/cupertino.dart';

import '../../data/models/user.dart';
import '../event_handler/user_state.dart';

class SearchLogic extends ChangeNotifier {
  final UserState _user = UserState();

  Future<OwlUser?> getUserByEmail(String email) async {
    final List<OwlUser> users = await _user.getUsers();

    for (final user in users) {
      if (user.email.toLowerCase() == email.trim().toLowerCase()) {
        return user;
      }
    }
  }

  Future<OwlUser?> getUserByUserName(String userName) async {
    final List<OwlUser> users = await _user.getUsers();

    for (final user in users) {
      if (user.userName.toLowerCase().trim() == userName.toLowerCase().trim()) {
        print(user.id);
        return user;
      }
    }
  }
}
