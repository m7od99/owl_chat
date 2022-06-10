// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageEventTearOff {
  const _$MessageEventTearOff();

  MessagesReceived messagesReceived() {
    return const MessagesReceived();
  }

  OnSeen onSeen({required int index}) {
    return OnSeen(
      index: index,
    );
  }
}

/// @nodoc
const $MessageEvent = _$MessageEventTearOff();

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesReceived,
    required TResult Function(int index) onSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? messagesReceived,
    TResult Function(int index)? onSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesReceived,
    TResult Function(int index)? onSeen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesReceived value) messagesReceived,
    required TResult Function(OnSeen value) onSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagesReceived value)? messagesReceived,
    TResult Function(OnSeen value)? onSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesReceived value)? messagesReceived,
    TResult Function(OnSeen value)? onSeen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;
}

/// @nodoc
abstract class $MessagesReceivedCopyWith<$Res> {
  factory $MessagesReceivedCopyWith(
          MessagesReceived value, $Res Function(MessagesReceived) then) =
      _$MessagesReceivedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagesReceivedCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $MessagesReceivedCopyWith<$Res> {
  _$MessagesReceivedCopyWithImpl(
      MessagesReceived _value, $Res Function(MessagesReceived) _then)
      : super(_value, (v) => _then(v as MessagesReceived));

  @override
  MessagesReceived get _value => super._value as MessagesReceived;
}

/// @nodoc

class _$MessagesReceived implements MessagesReceived {
  const _$MessagesReceived();

  @override
  String toString() {
    return 'MessageEvent.messagesReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MessagesReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesReceived,
    required TResult Function(int index) onSeen,
  }) {
    return messagesReceived();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? messagesReceived,
    TResult Function(int index)? onSeen,
  }) {
    return messagesReceived?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesReceived,
    TResult Function(int index)? onSeen,
    required TResult orElse(),
  }) {
    if (messagesReceived != null) {
      return messagesReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesReceived value) messagesReceived,
    required TResult Function(OnSeen value) onSeen,
  }) {
    return messagesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagesReceived value)? messagesReceived,
    TResult Function(OnSeen value)? onSeen,
  }) {
    return messagesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesReceived value)? messagesReceived,
    TResult Function(OnSeen value)? onSeen,
    required TResult orElse(),
  }) {
    if (messagesReceived != null) {
      return messagesReceived(this);
    }
    return orElse();
  }
}

abstract class MessagesReceived implements MessageEvent {
  const factory MessagesReceived() = _$MessagesReceived;
}

/// @nodoc
abstract class $OnSeenCopyWith<$Res> {
  factory $OnSeenCopyWith(OnSeen value, $Res Function(OnSeen) then) =
      _$OnSeenCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$OnSeenCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $OnSeenCopyWith<$Res> {
  _$OnSeenCopyWithImpl(OnSeen _value, $Res Function(OnSeen) _then)
      : super(_value, (v) => _then(v as OnSeen));

  @override
  OnSeen get _value => super._value as OnSeen;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(OnSeen(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnSeen implements OnSeen {
  const _$OnSeen({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'MessageEvent.onSeen(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnSeen &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $OnSeenCopyWith<OnSeen> get copyWith =>
      _$OnSeenCopyWithImpl<OnSeen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesReceived,
    required TResult Function(int index) onSeen,
  }) {
    return onSeen(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? messagesReceived,
    TResult Function(int index)? onSeen,
  }) {
    return onSeen?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesReceived,
    TResult Function(int index)? onSeen,
    required TResult orElse(),
  }) {
    if (onSeen != null) {
      return onSeen(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesReceived value) messagesReceived,
    required TResult Function(OnSeen value) onSeen,
  }) {
    return onSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagesReceived value)? messagesReceived,
    TResult Function(OnSeen value)? onSeen,
  }) {
    return onSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesReceived value)? messagesReceived,
    TResult Function(OnSeen value)? onSeen,
    required TResult orElse(),
  }) {
    if (onSeen != null) {
      return onSeen(this);
    }
    return orElse();
  }
}

abstract class OnSeen implements MessageEvent {
  const factory OnSeen({required int index}) = _$OnSeen;

  int get index;
  @JsonKey(ignore: true)
  $OnSeenCopyWith<OnSeen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$MessageStateTearOff {
  const _$MessageStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadProgress loadProgress() {
    return const LoadProgress();
  }

  Loaded loaded(
      {required List<MessageModel> messages, required int newMessages}) {
    return Loaded(
      messages: messages,
      newMessages: newMessages,
    );
  }
}

/// @nodoc
const $MessageState = _$MessageStateTearOff();

/// @nodoc
mixin _$MessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadProgress,
    required TResult Function(List<MessageModel> messages, int newMessages)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProgress,
    TResult Function(List<MessageModel> messages, int newMessages)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProgress,
    TResult Function(List<MessageModel> messages, int newMessages)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadProgress value) loadProgress,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadProgress value)? loadProgress,
    TResult Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadProgress value)? loadProgress,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'MessageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadProgress,
    required TResult Function(List<MessageModel> messages, int newMessages)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProgress,
    TResult Function(List<MessageModel> messages, int newMessages)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProgress,
    TResult Function(List<MessageModel> messages, int newMessages)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadProgress value) loadProgress,
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadProgress value)? loadProgress,
    TResult Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadProgress value)? loadProgress,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MessageState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadProgressCopyWith<$Res> {
  factory $LoadProgressCopyWith(
          LoadProgress value, $Res Function(LoadProgress) then) =
      _$LoadProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadProgressCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements $LoadProgressCopyWith<$Res> {
  _$LoadProgressCopyWithImpl(
      LoadProgress _value, $Res Function(LoadProgress) _then)
      : super(_value, (v) => _then(v as LoadProgress));

  @override
  LoadProgress get _value => super._value as LoadProgress;
}

/// @nodoc

class _$LoadProgress implements LoadProgress {
  const _$LoadProgress();

  @override
  String toString() {
    return 'MessageState.loadProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadProgress,
    required TResult Function(List<MessageModel> messages, int newMessages)
        loaded,
  }) {
    return loadProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProgress,
    TResult Function(List<MessageModel> messages, int newMessages)? loaded,
  }) {
    return loadProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProgress,
    TResult Function(List<MessageModel> messages, int newMessages)? loaded,
    required TResult orElse(),
  }) {
    if (loadProgress != null) {
      return loadProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadProgress value) loadProgress,
    required TResult Function(Loaded value) loaded,
  }) {
    return loadProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadProgress value)? loadProgress,
    TResult Function(Loaded value)? loaded,
  }) {
    return loadProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadProgress value)? loadProgress,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadProgress != null) {
      return loadProgress(this);
    }
    return orElse();
  }
}

abstract class LoadProgress implements MessageState {
  const factory LoadProgress() = _$LoadProgress;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<MessageModel> messages, int newMessages});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? messages = freezed,
    Object? newMessages = freezed,
  }) {
    return _then(Loaded(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      newMessages: newMessages == freezed
          ? _value.newMessages
          : newMessages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded({required this.messages, required this.newMessages});

  @override
  final List<MessageModel> messages;
  @override
  final int newMessages;

  @override
  String toString() {
    return 'MessageState.loaded(messages: $messages, newMessages: $newMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality()
                .equals(other.newMessages, newMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(newMessages));

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadProgress,
    required TResult Function(List<MessageModel> messages, int newMessages)
        loaded,
  }) {
    return loaded(messages, newMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProgress,
    TResult Function(List<MessageModel> messages, int newMessages)? loaded,
  }) {
    return loaded?.call(messages, newMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadProgress,
    TResult Function(List<MessageModel> messages, int newMessages)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messages, newMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadProgress value) loadProgress,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadProgress value)? loadProgress,
    TResult Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadProgress value)? loadProgress,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MessageState {
  const factory Loaded(
      {required List<MessageModel> messages,
      required int newMessages}) = _$Loaded;

  List<MessageModel> get messages;
  int get newMessages;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}
