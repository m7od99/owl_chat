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
    required String text,

    /// sender id
    required String sender,

    /// receiver id
    required String receiver,

    ///
    required bool isMe,

    ///the time of sending the message
    @JsonKey(fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
        required DateTime time,

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

  static DateTime _timeFromJson(Timestamp time) {
    return time.toDate();
  }

  static Timestamp _timeToJson(DateTime time) {
    return Timestamp.fromDate(time);
  }

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
  }

  static String? _typeToJson(MessageType? type) {
    return type.toString();
  }

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
