// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'owl_user.freezed.dart';
part 'owl_user.g.dart';

@freezed
class Owl with _$Owl {
  const factory Owl({
    required String id,
    required String userName,
    required String email,
    String? onChat,
    String? lastSeen,
    String? token,
    String? photoUri,
    String? country,
    String? userState,
    String? userTheme,
    List<String>? chats,
    List<String>? friends,
  }) = _Owl;

  factory Owl.fromJson(Map<String, dynamic> json) => _$OwlFromJson(json);
}
