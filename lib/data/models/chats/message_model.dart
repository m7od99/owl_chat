// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:owl_chat/data/models/chats/messages_type.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

/// Date Model to hold information about messages
@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    ///the main data
    required String data,

    /// sender id
    required String sender,

    /// receiver id
    required String receiver,

    ///the time of sending the message
    @JsonKey(fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
        DateTime? time,

    ///the type of message
    @JsonKey(fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
        required MessageType type,

    ///return true if send message successful
    required bool isSend,

    ///return true when receiver see the message
    required bool isSeen,

    /// represent doc id of message
    required String id,

    /// id of chat room
    String? chatId,
  }) = _MessageModel;

  static DateTime? _timeFromJson(Timestamp? time) {
    if (time != null) {
      return time.toDate();
    }
  }

  static Timestamp? _timeToJson(DateTime? time) {
    if (time != null) {
      return Timestamp.fromDate(time);
    }
  }

  static MessageType _typeFromJson(String type) {
    switch (type) {
      case 'gif':
        return MessageType.gif;
      case 'photo':
        return MessageType.photo;
      default:
        return MessageType.text;
    }
  }

  static String _typeToJson(MessageType type) {
    return type.toString();
  }

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
