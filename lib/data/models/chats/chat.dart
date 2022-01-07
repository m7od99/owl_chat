// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:owl_chat/data/models/auth/user.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    ///
    required String id,

    ///
    @AuthorConverter() required OwlUser other,

    ///
    @AuthorConverter() required OwlUser me,

    ///
    @Default('') String lastMessage,

    ///
    @TimestampConverter() Timestamp? time,

    ///
    @Default(0) int totalMessages,

    ///
    @Default(0) int totalNewMessages,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

class TimestampConverter implements JsonConverter<Timestamp?, dynamic> {
  const TimestampConverter();

  @override
  Timestamp? fromJson(dynamic json) {
    if (json != null) {
      if (json is DateTime) {
        return Timestamp.fromDate(json);
      }
      if (json is Timestamp) {
        return json;
      }
    }
  }

  @override
  DateTime? toJson(Timestamp? object) {
    if (object != null) {
      return object.toDate();
    }
  }
}

class AuthorConverter implements JsonConverter<OwlUser, Map> {
  const AuthorConverter();
  @override
  OwlUser fromJson(Map json) => OwlUser.fromMap(json.cast<String, dynamic>());

  @override
  Map toJson(OwlUser object) => object.toMap().cast<String, dynamic>();
}
