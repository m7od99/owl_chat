// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:owl_chat/data/models/auth/profile_user_settings.dart';
import 'package:owl_chat/data/models/auth/user.dart';

part 'owl_user.freezed.dart';
part 'owl_user.g.dart';

@freezed
class Owl with _$Owl {
  const factory Owl({
    required String id,
    required String userName,
    required String email,
    required UserProfileSettings userSettings,
    String? onChat,
    String? lastSeen,
    String? token,
    String? photoUri,
    String? country,
    String? userState,
    List<String>? chats,
    List<String>? friends,
    List<String>? blockedList,
    required List<OwlUser> chatsData,
  }) = _Owl;

  factory Owl.fromJson(Map<String, dynamic> json) => _$OwlFromJson(json);
}

enum UserStatus {
  online,
  busy,
  offline,
  invisible,
}
