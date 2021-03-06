// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'messages_type.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

/// Date Model to hold information about messages
@freezed
class MessageModel with _$MessageModel {
  @JsonSerializable(explicitToJson: true)
  const factory MessageModel({
    ///the main data
    required String text,

    /// sender id
    required String sender,

    /// receiver id
    required String receiver,

    ///
    @Default(false) bool isMe,

    ///the time of sending the message
    @ServerTimestampConverter() required DateTime time,

    ///the type of message
    @JsonKey(fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
        MessageType? type,

    ///return true if send message successful
    bool? isSend,

    ///return true when receiver see the message
    bool? isSeen,

    /// represent doc id of message
    String? id,

    /// send message to this chat room
    String? chatId,

    ///
    bool? isReplyMessage,

    ///
    bool? forwardMessage,

    ///
    bool? isEdited,

    ///
    bool? isGif,

    ///
    ///
    String? replyMessageId,
  }) = _MessageModel;

  static MessageType? _typeFromJson(String? type) {
    if (type != null) {
      switch (type) {
        case 'gif':
          return MessageType.gif;
        case 'photo':
          return MessageType.photo;
        default:
          return MessageType.text;
      }
    }
    return null;
  }

  static String? _typeToJson(MessageType? type) {
    return type.toString();
  }

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<DateTime, Object?> {
  const ServerTimestampConverter();

  @override
  DateTime fromJson(Object? timestamp) {
    if (timestamp is Timestamp) {
      return timestamp.toDate();
    }
    if (timestamp is int) {
      return DateTime.fromMicrosecondsSinceEpoch(timestamp);
    }
    return DateTime.now();
  }

  @override
  Object? toJson(DateTime? date) => date ?? Timestamp.now();
}
