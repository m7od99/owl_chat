// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
class _$MessageModelTearOff {
  const _$MessageModelTearOff();

  _MessageModel call(
      {required String text,
      required String sender,
      required String receiver,
      bool isMe = false,
      @JsonKey(fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
          required DateTime time,
      @JsonKey(fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
          MessageType? type,
      bool? isSend,
      bool? isSeen,
      String? id,
      String? chatId,
      bool? isReplyMessage,
      bool? forwardMessage,
      bool? isEdited,
      bool? isGif,
      String? replyMessageId}) {
    return _MessageModel(
      text: text,
      sender: sender,
      receiver: receiver,
      isMe: isMe,
      time: time,
      type: type,
      isSend: isSend,
      isSeen: isSeen,
      id: id,
      chatId: chatId,
      isReplyMessage: isReplyMessage,
      forwardMessage: forwardMessage,
      isEdited: isEdited,
      isGif: isGif,
      replyMessageId: replyMessageId,
    );
  }

  MessageModel fromJson(Map<String, Object?> json) {
    return MessageModel.fromJson(json);
  }
}

/// @nodoc
const $MessageModel = _$MessageModelTearOff();

/// @nodoc
mixin _$MessageModel {
  ///the main data
  String get text => throw _privateConstructorUsedError;

  /// sender id
  String get sender => throw _privateConstructorUsedError;

  /// receiver id
  String get receiver => throw _privateConstructorUsedError;

  ///
  bool get isMe => throw _privateConstructorUsedError;

  ///the time of sending the message
  @JsonKey(
      fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
  DateTime get time => throw _privateConstructorUsedError;

  ///the type of message
  @JsonKey(
      fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
  MessageType? get type => throw _privateConstructorUsedError;

  ///return true if send message successful
  bool? get isSend => throw _privateConstructorUsedError;

  ///return true when receiver see the message
  bool? get isSeen => throw _privateConstructorUsedError;

  /// represent doc id of message
  String? get id => throw _privateConstructorUsedError;

  /// send message to this chat room
  String? get chatId => throw _privateConstructorUsedError;

  ///
  bool? get isReplyMessage => throw _privateConstructorUsedError;

  ///
  bool? get forwardMessage => throw _privateConstructorUsedError;

  ///
  bool? get isEdited => throw _privateConstructorUsedError;

  ///
  bool? get isGif => throw _privateConstructorUsedError;

  ///
  ///
  String? get replyMessageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res>;
  $Res call(
      {String text,
      String sender,
      String receiver,
      bool isMe,
      @JsonKey(fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
          DateTime time,
      @JsonKey(fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
          MessageType? type,
      bool? isSend,
      bool? isSeen,
      String? id,
      String? chatId,
      bool? isReplyMessage,
      bool? forwardMessage,
      bool? isEdited,
      bool? isGif,
      String? replyMessageId});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res> implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  final MessageModel _value;
  // ignore: unused_field
  final $Res Function(MessageModel) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? isMe = freezed,
    Object? time = freezed,
    Object? type = freezed,
    Object? isSend = freezed,
    Object? isSeen = freezed,
    Object? id = freezed,
    Object? chatId = freezed,
    Object? isReplyMessage = freezed,
    Object? forwardMessage = freezed,
    Object? isEdited = freezed,
    Object? isGif = freezed,
    Object? replyMessageId = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: isMe == freezed
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType?,
      isSend: isSend == freezed
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSeen: isSeen == freezed
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReplyMessage: isReplyMessage == freezed
          ? _value.isReplyMessage
          : isReplyMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      forwardMessage: forwardMessage == freezed
          ? _value.forwardMessage
          : forwardMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEdited: isEdited == freezed
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool?,
      isGif: isGif == freezed
          ? _value.isGif
          : isGif // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyMessageId: replyMessageId == freezed
          ? _value.replyMessageId
          : replyMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MessageModelCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$MessageModelCopyWith(
          _MessageModel value, $Res Function(_MessageModel) then) =
      __$MessageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text,
      String sender,
      String receiver,
      bool isMe,
      @JsonKey(fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
          DateTime time,
      @JsonKey(fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
          MessageType? type,
      bool? isSend,
      bool? isSeen,
      String? id,
      String? chatId,
      bool? isReplyMessage,
      bool? forwardMessage,
      bool? isEdited,
      bool? isGif,
      String? replyMessageId});
}

/// @nodoc
class __$MessageModelCopyWithImpl<$Res> extends _$MessageModelCopyWithImpl<$Res>
    implements _$MessageModelCopyWith<$Res> {
  __$MessageModelCopyWithImpl(
      _MessageModel _value, $Res Function(_MessageModel) _then)
      : super(_value, (v) => _then(v as _MessageModel));

  @override
  _MessageModel get _value => super._value as _MessageModel;

  @override
  $Res call({
    Object? text = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? isMe = freezed,
    Object? time = freezed,
    Object? type = freezed,
    Object? isSend = freezed,
    Object? isSeen = freezed,
    Object? id = freezed,
    Object? chatId = freezed,
    Object? isReplyMessage = freezed,
    Object? forwardMessage = freezed,
    Object? isEdited = freezed,
    Object? isGif = freezed,
    Object? replyMessageId = freezed,
  }) {
    return _then(_MessageModel(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: isMe == freezed
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType?,
      isSend: isSend == freezed
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSeen: isSeen == freezed
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      isReplyMessage: isReplyMessage == freezed
          ? _value.isReplyMessage
          : isReplyMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      forwardMessage: forwardMessage == freezed
          ? _value.forwardMessage
          : forwardMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEdited: isEdited == freezed
          ? _value.isEdited
          : isEdited // ignore: cast_nullable_to_non_nullable
              as bool?,
      isGif: isGif == freezed
          ? _value.isGif
          : isGif // ignore: cast_nullable_to_non_nullable
              as bool?,
      replyMessageId: replyMessageId == freezed
          ? _value.replyMessageId
          : replyMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageModel implements _MessageModel {
  const _$_MessageModel(
      {required this.text,
      required this.sender,
      required this.receiver,
      this.isMe = false,
      @JsonKey(fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
          required this.time,
      @JsonKey(fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
          this.type,
      this.isSend,
      this.isSeen,
      this.id,
      this.chatId,
      this.isReplyMessage,
      this.forwardMessage,
      this.isEdited,
      this.isGif,
      this.replyMessageId});

  factory _$_MessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageModelFromJson(json);

  @override

  ///the main data
  final String text;
  @override

  /// sender id
  final String sender;
  @override

  /// receiver id
  final String receiver;
  @JsonKey(defaultValue: false)
  @override

  ///
  final bool isMe;
  @override

  ///the time of sending the message
  @JsonKey(
      fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
  final DateTime time;
  @override

  ///the type of message
  @JsonKey(
      fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
  final MessageType? type;
  @override

  ///return true if send message successful
  final bool? isSend;
  @override

  ///return true when receiver see the message
  final bool? isSeen;
  @override

  /// represent doc id of message
  final String? id;
  @override

  /// send message to this chat room
  final String? chatId;
  @override

  ///
  final bool? isReplyMessage;
  @override

  ///
  final bool? forwardMessage;
  @override

  ///
  final bool? isEdited;
  @override

  ///
  final bool? isGif;
  @override

  ///
  ///
  final String? replyMessageId;

  @override
  String toString() {
    return 'MessageModel(text: $text, sender: $sender, receiver: $receiver, isMe: $isMe, time: $time, type: $type, isSend: $isSend, isSeen: $isSeen, id: $id, chatId: $chatId, isReplyMessage: $isReplyMessage, forwardMessage: $forwardMessage, isEdited: $isEdited, isGif: $isGif, replyMessageId: $replyMessageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageModel &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.receiver, receiver) &&
            const DeepCollectionEquality().equals(other.isMe, isMe) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.isSend, isSend) &&
            const DeepCollectionEquality().equals(other.isSeen, isSeen) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.chatId, chatId) &&
            const DeepCollectionEquality()
                .equals(other.isReplyMessage, isReplyMessage) &&
            const DeepCollectionEquality()
                .equals(other.forwardMessage, forwardMessage) &&
            const DeepCollectionEquality().equals(other.isEdited, isEdited) &&
            const DeepCollectionEquality().equals(other.isGif, isGif) &&
            const DeepCollectionEquality()
                .equals(other.replyMessageId, replyMessageId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(receiver),
      const DeepCollectionEquality().hash(isMe),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(isSend),
      const DeepCollectionEquality().hash(isSeen),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(chatId),
      const DeepCollectionEquality().hash(isReplyMessage),
      const DeepCollectionEquality().hash(forwardMessage),
      const DeepCollectionEquality().hash(isEdited),
      const DeepCollectionEquality().hash(isGif),
      const DeepCollectionEquality().hash(replyMessageId));

  @JsonKey(ignore: true)
  @override
  _$MessageModelCopyWith<_MessageModel> get copyWith =>
      __$MessageModelCopyWithImpl<_MessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageModelToJson(this);
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
      {required String text,
      required String sender,
      required String receiver,
      bool isMe,
      @JsonKey(fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
          required DateTime time,
      @JsonKey(fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
          MessageType? type,
      bool? isSend,
      bool? isSeen,
      String? id,
      String? chatId,
      bool? isReplyMessage,
      bool? forwardMessage,
      bool? isEdited,
      bool? isGif,
      String? replyMessageId}) = _$_MessageModel;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$_MessageModel.fromJson;

  @override

  ///the main data
  String get text;
  @override

  /// sender id
  String get sender;
  @override

  /// receiver id
  String get receiver;
  @override

  ///
  bool get isMe;
  @override

  ///the time of sending the message
  @JsonKey(
      fromJson: MessageModel._timeFromJson, toJson: MessageModel._timeToJson)
  DateTime get time;
  @override

  ///the type of message
  @JsonKey(
      fromJson: MessageModel._typeFromJson, toJson: MessageModel._typeToJson)
  MessageType? get type;
  @override

  ///return true if send message successful
  bool? get isSend;
  @override

  ///return true when receiver see the message
  bool? get isSeen;
  @override

  /// represent doc id of message
  String? get id;
  @override

  /// send message to this chat room
  String? get chatId;
  @override

  ///
  bool? get isReplyMessage;
  @override

  ///
  bool? get forwardMessage;
  @override

  ///
  bool? get isEdited;
  @override

  ///
  bool? get isGif;
  @override

  ///
  ///
  String? get replyMessageId;
  @override
  @JsonKey(ignore: true)
  _$MessageModelCopyWith<_MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
