// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
class _$ChatRoomTearOff {
  const _$ChatRoomTearOff();

  _ChatRoom call(
      {required String id,
      required String userId1,
      required String userId2,
      int? totalMessage,
      String? lastMessage,
      String? timeOfLastMessage}) {
    return _ChatRoom(
      id: id,
      userId1: userId1,
      userId2: userId2,
      totalMessage: totalMessage,
      lastMessage: lastMessage,
      timeOfLastMessage: timeOfLastMessage,
    );
  }

  ChatRoom fromJson(Map<String, Object?> json) {
    return ChatRoom.fromJson(json);
  }
}

/// @nodoc
const $ChatRoom = _$ChatRoomTearOff();

/// @nodoc
mixin _$ChatRoom {
  String get id => throw _privateConstructorUsedError;
  String get userId1 => throw _privateConstructorUsedError;
  String get userId2 => throw _privateConstructorUsedError;
  int? get totalMessage => throw _privateConstructorUsedError;
  String? get lastMessage => throw _privateConstructorUsedError;
  String? get timeOfLastMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId1,
      String userId2,
      int? totalMessage,
      String? lastMessage,
      String? timeOfLastMessage});
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res> implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  final ChatRoom _value;
  // ignore: unused_field
  final $Res Function(ChatRoom) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId1 = freezed,
    Object? userId2 = freezed,
    Object? totalMessage = freezed,
    Object? lastMessage = freezed,
    Object? timeOfLastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId1: userId1 == freezed
          ? _value.userId1
          : userId1 // ignore: cast_nullable_to_non_nullable
              as String,
      userId2: userId2 == freezed
          ? _value.userId2
          : userId2 // ignore: cast_nullable_to_non_nullable
              as String,
      totalMessage: totalMessage == freezed
          ? _value.totalMessage
          : totalMessage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfLastMessage: timeOfLastMessage == freezed
          ? _value.timeOfLastMessage
          : timeOfLastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChatRoomCopyWith<$Res> implements $ChatRoomCopyWith<$Res> {
  factory _$ChatRoomCopyWith(_ChatRoom value, $Res Function(_ChatRoom) then) =
      __$ChatRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId1,
      String userId2,
      int? totalMessage,
      String? lastMessage,
      String? timeOfLastMessage});
}

/// @nodoc
class __$ChatRoomCopyWithImpl<$Res> extends _$ChatRoomCopyWithImpl<$Res>
    implements _$ChatRoomCopyWith<$Res> {
  __$ChatRoomCopyWithImpl(_ChatRoom _value, $Res Function(_ChatRoom) _then)
      : super(_value, (v) => _then(v as _ChatRoom));

  @override
  _ChatRoom get _value => super._value as _ChatRoom;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId1 = freezed,
    Object? userId2 = freezed,
    Object? totalMessage = freezed,
    Object? lastMessage = freezed,
    Object? timeOfLastMessage = freezed,
  }) {
    return _then(_ChatRoom(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId1: userId1 == freezed
          ? _value.userId1
          : userId1 // ignore: cast_nullable_to_non_nullable
              as String,
      userId2: userId2 == freezed
          ? _value.userId2
          : userId2 // ignore: cast_nullable_to_non_nullable
              as String,
      totalMessage: totalMessage == freezed
          ? _value.totalMessage
          : totalMessage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfLastMessage: timeOfLastMessage == freezed
          ? _value.timeOfLastMessage
          : timeOfLastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoom implements _ChatRoom {
  const _$_ChatRoom(
      {required this.id,
      required this.userId1,
      required this.userId2,
      this.totalMessage,
      this.lastMessage,
      this.timeOfLastMessage});

  factory _$_ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomFromJson(json);

  @override
  final String id;
  @override
  final String userId1;
  @override
  final String userId2;
  @override
  final int? totalMessage;
  @override
  final String? lastMessage;
  @override
  final String? timeOfLastMessage;

  @override
  String toString() {
    return 'ChatRoom(id: $id, userId1: $userId1, userId2: $userId2, totalMessage: $totalMessage, lastMessage: $lastMessage, timeOfLastMessage: $timeOfLastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId1, userId1) || other.userId1 == userId1) &&
            (identical(other.userId2, userId2) || other.userId2 == userId2) &&
            (identical(other.totalMessage, totalMessage) ||
                other.totalMessage == totalMessage) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.timeOfLastMessage, timeOfLastMessage) ||
                other.timeOfLastMessage == timeOfLastMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId1, userId2,
      totalMessage, lastMessage, timeOfLastMessage);

  @JsonKey(ignore: true)
  @override
  _$ChatRoomCopyWith<_ChatRoom> get copyWith =>
      __$ChatRoomCopyWithImpl<_ChatRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomToJson(this);
  }
}

abstract class _ChatRoom implements ChatRoom {
  const factory _ChatRoom(
      {required String id,
      required String userId1,
      required String userId2,
      int? totalMessage,
      String? lastMessage,
      String? timeOfLastMessage}) = _$_ChatRoom;

  factory _ChatRoom.fromJson(Map<String, dynamic> json) = _$_ChatRoom.fromJson;

  @override
  String get id;
  @override
  String get userId1;
  @override
  String get userId2;
  @override
  int? get totalMessage;
  @override
  String? get lastMessage;
  @override
  String? get timeOfLastMessage;
  @override
  @JsonKey(ignore: true)
  _$ChatRoomCopyWith<_ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
