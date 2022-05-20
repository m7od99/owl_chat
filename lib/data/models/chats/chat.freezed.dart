// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _Chat call(
      {required String id,
      @AuthorConverter()
          required OwlUser other,
      @AuthorConverter()
          required OwlUser me,
      String lastMessage = '',
      @TimestampConverter()
          Timestamp? time,
      int totalMessages = 0,
      int totalNewMessages = 0,
      @SettingsConverter()
          List<ChatNotificationsSettings> settings = const []}) {
    return _Chat(
      id: id,
      other: other,
      me: me,
      lastMessage: lastMessage,
      time: time,
      totalMessages: totalMessages,
      totalNewMessages: totalNewMessages,
      settings: settings,
    );
  }

  Chat fromJson(Map<String, Object?> json) {
    return Chat.fromJson(json);
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  ///
  String get id => throw _privateConstructorUsedError;

  ///
  @AuthorConverter()
  OwlUser get other => throw _privateConstructorUsedError;

  ///
  @AuthorConverter()
  OwlUser get me => throw _privateConstructorUsedError;

  ///
  String get lastMessage => throw _privateConstructorUsedError;

  ///
  @TimestampConverter()
  Timestamp? get time => throw _privateConstructorUsedError;

  ///
  int get totalMessages => throw _privateConstructorUsedError;

  ///
  int get totalNewMessages => throw _privateConstructorUsedError;

  ///
  @SettingsConverter()
  List<ChatNotificationsSettings> get settings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @AuthorConverter() OwlUser other,
      @AuthorConverter() OwlUser me,
      String lastMessage,
      @TimestampConverter() Timestamp? time,
      int totalMessages,
      int totalNewMessages,
      @SettingsConverter() List<ChatNotificationsSettings> settings});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? other = freezed,
    Object? me = freezed,
    Object? lastMessage = freezed,
    Object? time = freezed,
    Object? totalMessages = freezed,
    Object? totalNewMessages = freezed,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      other: other == freezed
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as OwlUser,
      me: me == freezed
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as OwlUser,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      totalMessages: totalMessages == freezed
          ? _value.totalMessages
          : totalMessages // ignore: cast_nullable_to_non_nullable
              as int,
      totalNewMessages: totalNewMessages == freezed
          ? _value.totalNewMessages
          : totalNewMessages // ignore: cast_nullable_to_non_nullable
              as int,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as List<ChatNotificationsSettings>,
    ));
  }
}

/// @nodoc
abstract class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) then) =
      __$ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @AuthorConverter() OwlUser other,
      @AuthorConverter() OwlUser me,
      String lastMessage,
      @TimestampConverter() Timestamp? time,
      int totalMessages,
      int totalNewMessages,
      @SettingsConverter() List<ChatNotificationsSettings> settings});
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(_Chat _value, $Res Function(_Chat) _then)
      : super(_value, (v) => _then(v as _Chat));

  @override
  _Chat get _value => super._value as _Chat;

  @override
  $Res call({
    Object? id = freezed,
    Object? other = freezed,
    Object? me = freezed,
    Object? lastMessage = freezed,
    Object? time = freezed,
    Object? totalMessages = freezed,
    Object? totalNewMessages = freezed,
    Object? settings = freezed,
  }) {
    return _then(_Chat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      other: other == freezed
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as OwlUser,
      me: me == freezed
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as OwlUser,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      totalMessages: totalMessages == freezed
          ? _value.totalMessages
          : totalMessages // ignore: cast_nullable_to_non_nullable
              as int,
      totalNewMessages: totalNewMessages == freezed
          ? _value.totalNewMessages
          : totalNewMessages // ignore: cast_nullable_to_non_nullable
              as int,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as List<ChatNotificationsSettings>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat implements _Chat {
  const _$_Chat(
      {required this.id,
      @AuthorConverter() required this.other,
      @AuthorConverter() required this.me,
      this.lastMessage = '',
      @TimestampConverter() this.time,
      this.totalMessages = 0,
      this.totalNewMessages = 0,
      @SettingsConverter() this.settings = const []});

  factory _$_Chat.fromJson(Map<String, dynamic> json) => _$$_ChatFromJson(json);

  @override

  ///
  final String id;
  @override

  ///
  @AuthorConverter()
  final OwlUser other;
  @override

  ///
  @AuthorConverter()
  final OwlUser me;
  @JsonKey()
  @override

  ///
  final String lastMessage;
  @override

  ///
  @TimestampConverter()
  final Timestamp? time;
  @JsonKey()
  @override

  ///
  final int totalMessages;
  @JsonKey()
  @override

  ///
  final int totalNewMessages;
  @JsonKey()
  @override

  ///
  @SettingsConverter()
  final List<ChatNotificationsSettings> settings;

  @override
  String toString() {
    return 'Chat(id: $id, other: $other, me: $me, lastMessage: $lastMessage, time: $time, totalMessages: $totalMessages, totalNewMessages: $totalNewMessages, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Chat &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.other, this.other) &&
            const DeepCollectionEquality().equals(other.me, me) &&
            const DeepCollectionEquality()
                .equals(other.lastMessage, lastMessage) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.totalMessages, totalMessages) &&
            const DeepCollectionEquality()
                .equals(other.totalNewMessages, totalNewMessages) &&
            const DeepCollectionEquality().equals(other.settings, settings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(other),
      const DeepCollectionEquality().hash(me),
      const DeepCollectionEquality().hash(lastMessage),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(totalMessages),
      const DeepCollectionEquality().hash(totalNewMessages),
      const DeepCollectionEquality().hash(settings));

  @JsonKey(ignore: true)
  @override
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatToJson(this);
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {required String id,
      @AuthorConverter() required OwlUser other,
      @AuthorConverter() required OwlUser me,
      String lastMessage,
      @TimestampConverter() Timestamp? time,
      int totalMessages,
      int totalNewMessages,
      @SettingsConverter() List<ChatNotificationsSettings> settings}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override

  ///
  String get id;
  @override

  ///
  @AuthorConverter()
  OwlUser get other;
  @override

  ///
  @AuthorConverter()
  OwlUser get me;
  @override

  ///
  String get lastMessage;
  @override

  ///
  @TimestampConverter()
  Timestamp? get time;
  @override

  ///
  int get totalMessages;
  @override

  ///
  int get totalNewMessages;
  @override

  ///
  @SettingsConverter()
  List<ChatNotificationsSettings> get settings;
  @override
  @JsonKey(ignore: true)
  _$ChatCopyWith<_Chat> get copyWith => throw _privateConstructorUsedError;
}
