// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatRoomEventTearOff {
  const _$ChatRoomEventTearOff();

  LoadChatRoom loadChatsRoom() {
    return const LoadChatRoom();
  }

  LoadAnimation loadAnimation({required bool load}) {
    return LoadAnimation(
      load: load,
    );
  }
}

/// @nodoc
const $ChatRoomEvent = _$ChatRoomEventTearOff();

/// @nodoc
mixin _$ChatRoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadChatsRoom,
    required TResult Function(bool load) loadAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadChatsRoom,
    TResult Function(bool load)? loadAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadChatsRoom,
    TResult Function(bool load)? loadAnimation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatRoom value) loadChatsRoom,
    required TResult Function(LoadAnimation value) loadAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadChatRoom value)? loadChatsRoom,
    TResult Function(LoadAnimation value)? loadAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatRoom value)? loadChatsRoom,
    TResult Function(LoadAnimation value)? loadAnimation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomEventCopyWith<$Res> {
  factory $ChatRoomEventCopyWith(
          ChatRoomEvent value, $Res Function(ChatRoomEvent) then) =
      _$ChatRoomEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatRoomEventCopyWithImpl<$Res>
    implements $ChatRoomEventCopyWith<$Res> {
  _$ChatRoomEventCopyWithImpl(this._value, this._then);

  final ChatRoomEvent _value;
  // ignore: unused_field
  final $Res Function(ChatRoomEvent) _then;
}

/// @nodoc
abstract class $LoadChatRoomCopyWith<$Res> {
  factory $LoadChatRoomCopyWith(
          LoadChatRoom value, $Res Function(LoadChatRoom) then) =
      _$LoadChatRoomCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadChatRoomCopyWithImpl<$Res> extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $LoadChatRoomCopyWith<$Res> {
  _$LoadChatRoomCopyWithImpl(
      LoadChatRoom _value, $Res Function(LoadChatRoom) _then)
      : super(_value, (v) => _then(v as LoadChatRoom));

  @override
  LoadChatRoom get _value => super._value as LoadChatRoom;
}

/// @nodoc

class _$LoadChatRoom implements LoadChatRoom {
  const _$LoadChatRoom();

  @override
  String toString() {
    return 'ChatRoomEvent.loadChatsRoom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadChatRoom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadChatsRoom,
    required TResult Function(bool load) loadAnimation,
  }) {
    return loadChatsRoom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadChatsRoom,
    TResult Function(bool load)? loadAnimation,
  }) {
    return loadChatsRoom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadChatsRoom,
    TResult Function(bool load)? loadAnimation,
    required TResult orElse(),
  }) {
    if (loadChatsRoom != null) {
      return loadChatsRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatRoom value) loadChatsRoom,
    required TResult Function(LoadAnimation value) loadAnimation,
  }) {
    return loadChatsRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadChatRoom value)? loadChatsRoom,
    TResult Function(LoadAnimation value)? loadAnimation,
  }) {
    return loadChatsRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatRoom value)? loadChatsRoom,
    TResult Function(LoadAnimation value)? loadAnimation,
    required TResult orElse(),
  }) {
    if (loadChatsRoom != null) {
      return loadChatsRoom(this);
    }
    return orElse();
  }
}

abstract class LoadChatRoom implements ChatRoomEvent {
  const factory LoadChatRoom() = _$LoadChatRoom;
}

/// @nodoc
abstract class $LoadAnimationCopyWith<$Res> {
  factory $LoadAnimationCopyWith(
          LoadAnimation value, $Res Function(LoadAnimation) then) =
      _$LoadAnimationCopyWithImpl<$Res>;
  $Res call({bool load});
}

/// @nodoc
class _$LoadAnimationCopyWithImpl<$Res>
    extends _$ChatRoomEventCopyWithImpl<$Res>
    implements $LoadAnimationCopyWith<$Res> {
  _$LoadAnimationCopyWithImpl(
      LoadAnimation _value, $Res Function(LoadAnimation) _then)
      : super(_value, (v) => _then(v as LoadAnimation));

  @override
  LoadAnimation get _value => super._value as LoadAnimation;

  @override
  $Res call({
    Object? load = freezed,
  }) {
    return _then(LoadAnimation(
      load: load == freezed
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadAnimation implements LoadAnimation {
  const _$LoadAnimation({required this.load});

  @override
  final bool load;

  @override
  String toString() {
    return 'ChatRoomEvent.loadAnimation(load: $load)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadAnimation &&
            const DeepCollectionEquality().equals(other.load, load));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(load));

  @JsonKey(ignore: true)
  @override
  $LoadAnimationCopyWith<LoadAnimation> get copyWith =>
      _$LoadAnimationCopyWithImpl<LoadAnimation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadChatsRoom,
    required TResult Function(bool load) loadAnimation,
  }) {
    return loadAnimation(load);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadChatsRoom,
    TResult Function(bool load)? loadAnimation,
  }) {
    return loadAnimation?.call(load);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadChatsRoom,
    TResult Function(bool load)? loadAnimation,
    required TResult orElse(),
  }) {
    if (loadAnimation != null) {
      return loadAnimation(load);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadChatRoom value) loadChatsRoom,
    required TResult Function(LoadAnimation value) loadAnimation,
  }) {
    return loadAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadChatRoom value)? loadChatsRoom,
    TResult Function(LoadAnimation value)? loadAnimation,
  }) {
    return loadAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadChatRoom value)? loadChatsRoom,
    TResult Function(LoadAnimation value)? loadAnimation,
    required TResult orElse(),
  }) {
    if (loadAnimation != null) {
      return loadAnimation(this);
    }
    return orElse();
  }
}

abstract class LoadAnimation implements ChatRoomEvent {
  const factory LoadAnimation({required bool load}) = _$LoadAnimation;

  bool get load;
  @JsonKey(ignore: true)
  $LoadAnimationCopyWith<LoadAnimation> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRoomState _$ChatRoomStateFromJson(Map<String, dynamic> json) {
  return _ChatRoomState.fromJson(json);
}

/// @nodoc
class _$ChatRoomStateTearOff {
  const _$ChatRoomStateTearOff();

  _ChatRoomState call({required List<Chat> chats, required bool isLoading}) {
    return _ChatRoomState(
      chats: chats,
      isLoading: isLoading,
    );
  }

  ChatRoomState fromJson(Map<String, Object?> json) {
    return ChatRoomState.fromJson(json);
  }
}

/// @nodoc
const $ChatRoomState = _$ChatRoomStateTearOff();

/// @nodoc
mixin _$ChatRoomState {
  List<Chat> get chats => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomStateCopyWith<ChatRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomStateCopyWith(
          ChatRoomState value, $Res Function(ChatRoomState) then) =
      _$ChatRoomStateCopyWithImpl<$Res>;
  $Res call({List<Chat> chats, bool isLoading});
}

/// @nodoc
class _$ChatRoomStateCopyWithImpl<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  _$ChatRoomStateCopyWithImpl(this._value, this._then);

  final ChatRoomState _value;
  // ignore: unused_field
  final $Res Function(ChatRoomState) _then;

  @override
  $Res call({
    Object? chats = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ChatRoomStateCopyWith<$Res>
    implements $ChatRoomStateCopyWith<$Res> {
  factory _$ChatRoomStateCopyWith(
          _ChatRoomState value, $Res Function(_ChatRoomState) then) =
      __$ChatRoomStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Chat> chats, bool isLoading});
}

/// @nodoc
class __$ChatRoomStateCopyWithImpl<$Res>
    extends _$ChatRoomStateCopyWithImpl<$Res>
    implements _$ChatRoomStateCopyWith<$Res> {
  __$ChatRoomStateCopyWithImpl(
      _ChatRoomState _value, $Res Function(_ChatRoomState) _then)
      : super(_value, (v) => _then(v as _ChatRoomState));

  @override
  _ChatRoomState get _value => super._value as _ChatRoomState;

  @override
  $Res call({
    Object? chats = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ChatRoomState(
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoomState implements _ChatRoomState {
  const _$_ChatRoomState({required this.chats, required this.isLoading});

  factory _$_ChatRoomState.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomStateFromJson(json);

  @override
  final List<Chat> chats;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ChatRoomState(chats: $chats, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatRoomState &&
            const DeepCollectionEquality().equals(other.chats, chats) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chats),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$ChatRoomStateCopyWith<_ChatRoomState> get copyWith =>
      __$ChatRoomStateCopyWithImpl<_ChatRoomState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomStateToJson(this);
  }
}

abstract class _ChatRoomState implements ChatRoomState {
  const factory _ChatRoomState(
      {required List<Chat> chats, required bool isLoading}) = _$_ChatRoomState;

  factory _ChatRoomState.fromJson(Map<String, dynamic> json) =
      _$_ChatRoomState.fromJson;

  @override
  List<Chat> get chats;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$ChatRoomStateCopyWith<_ChatRoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
