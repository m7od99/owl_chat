import '../../data/models/user.dart';
import '../event_handler/user_state.dart';

class SearchLogic {
  final UserState _user = UserState();

  Future<OwlUser> getUserByEmail(String email) async {
    List<OwlUser> users = await _user.getUsers();

    for (var user in users) {
      if (user.email.toLowerCase() == email.trim().toLowerCase()) {
        return user;
      }
    }
    return OwlUser(email: '', id: '', userName: '');
  }

  Future<OwlUser> getUserByUserName(String userName) async {
    List<OwlUser> users = await _user.getUsers();

    for (var user in users) {
      if (user.userName.toLowerCase().trim() == userName.toLowerCase().trim()) {
        print(user.id);
        return user;
      }
    }
    return OwlUser(email: '', id: '', userName: '');
  }
}
