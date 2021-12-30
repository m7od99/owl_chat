import 'package:json_annotation/json_annotation.dart';

enum MessageType {
  text,
  gif,
  photo,
  voice,
  video,
}

class MessageTypeConverter implements JsonConverter<MessageType, String> {
  const MessageTypeConverter();

  @override
  MessageType fromJson(String json) {
    switch (json) {
      case 'gif':
        return MessageType.gif;
      case 'photo':
        return MessageType.photo;
      default:
        return MessageType.text;
    }
  }

  @override
  String toJson(MessageType object) {
    return object.toString();
  }
}
