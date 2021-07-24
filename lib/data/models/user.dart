import 'dart:convert';

class OwlUser {
  String email;
  late String userName;
  late String id;
  late bool isOnline;
  late List<OwlUser> friends;
  late String photoUri;

  OwlUser({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
    };
  }

  factory OwlUser.fromMap(Map<String, dynamic> map) {
    return OwlUser(
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OwlUser.fromJson(String source) =>
      OwlUser.fromMap(json.decode(source));
}
