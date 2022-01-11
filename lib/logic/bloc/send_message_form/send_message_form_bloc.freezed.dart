// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_message_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendMessageFormEventTearOff {
  const _$SendMessageFormEventTearOff();

  _UpdateText updateText({required String text}) {
    return _UpdateText(
      text: text,
    );
  }

  _SendMessage sendMessage() {
    return const _SendMessage();
  }

  _EditMessage editMessage({required MessageModel message}) {
    return _EditMessage(
      message: message,
    );
  }

  SendGif sendGif() {
    return const SendGif();
  }

  _UpdateMessage updateMessage({required MessageModel message}) {
    return _UpdateMessage(
      message: message,
    );
  }

  _ReplyMessage replyMessage(
      {required MessageModel message, required int messageIndex}) {
    return _ReplyMessage(
      message: message,
      messageIndex: messageIndex,
    );
  }

  _ForwardMessage forwardMessage(
      {required MessageModel message, required Chat chat}) {
    return _ForwardMessage(
      message: message,
      chat: chat,
    );
  }

  _CancelEdit cancelEdit() {
    return const _CancelEdit();
  }

  _CancelReply cancelReply() {
    return const _CancelReply();
  }

  _CancelForward cancelForward() {
    return const _CancelForward();
  }

  _ClearMessage clearMessage() {
    return const _ClearMessage();
  }
}

/// @nodoc
const $SendMessageFormEvent = _$SendMessageFormEventTearOff();

/// @nodoc
mixin _$SendMessageFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageFormEventCopyWith<$Res> {
  factory $SendMessageFormEventCopyWith(SendMessageFormEvent value,
          $Res Function(SendMessageFormEvent) then) =
      _$SendMessageFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendMessageFormEventCopyWithImpl<$Res>
    implements $SendMessageFormEventCopyWith<$Res> {
  _$SendMessageFormEventCopyWithImpl(this._value, this._then);

  final SendMessageFormEvent _value;
  // ignore: unused_field
  final $Res Function(SendMessageFormEvent) _then;
}

/// @nodoc
abstract class _$UpdateTextCopyWith<$Res> {
  factory _$UpdateTextCopyWith(
          _UpdateText value, $Res Function(_UpdateText) then) =
      __$UpdateTextCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$UpdateTextCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$UpdateTextCopyWith<$Res> {
  __$UpdateTextCopyWithImpl(
      _UpdateText _value, $Res Function(_UpdateText) _then)
      : super(_value, (v) => _then(v as _UpdateText));

  @override
  _UpdateText get _value => super._value as _UpdateText;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_UpdateText(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateText implements _UpdateText {
  const _$_UpdateText({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SendMessageFormEvent.updateText(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateText &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$UpdateTextCopyWith<_UpdateText> get copyWith =>
      __$UpdateTextCopyWithImpl<_UpdateText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return updateText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return updateText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (updateText != null) {
      return updateText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return updateText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return updateText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (updateText != null) {
      return updateText(this);
    }
    return orElse();
  }
}

abstract class _UpdateText implements SendMessageFormEvent {
  const factory _UpdateText({required String text}) = _$_UpdateText;

  String get text;
  @JsonKey(ignore: true)
  _$UpdateTextCopyWith<_UpdateText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage();

  @override
  String toString() {
    return 'SendMessageFormEvent.sendMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return sendMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return sendMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements SendMessageFormEvent {
  const factory _SendMessage() = _$_SendMessage;
}

/// @nodoc
abstract class _$EditMessageCopyWith<$Res> {
  factory _$EditMessageCopyWith(
          _EditMessage value, $Res Function(_EditMessage) then) =
      __$EditMessageCopyWithImpl<$Res>;
  $Res call({MessageModel message});

  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class __$EditMessageCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$EditMessageCopyWith<$Res> {
  __$EditMessageCopyWithImpl(
      _EditMessage _value, $Res Function(_EditMessage) _then)
      : super(_value, (v) => _then(v as _EditMessage));

  @override
  _EditMessage get _value => super._value as _EditMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_EditMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ));
  }

  @override
  $MessageModelCopyWith<$Res> get message {
    return $MessageModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$_EditMessage implements _EditMessage {
  const _$_EditMessage({required this.message});

  @override
  final MessageModel message;

  @override
  String toString() {
    return 'SendMessageFormEvent.editMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$EditMessageCopyWith<_EditMessage> get copyWith =>
      __$EditMessageCopyWithImpl<_EditMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return editMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return editMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return editMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return editMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(this);
    }
    return orElse();
  }
}

abstract class _EditMessage implements SendMessageFormEvent {
  const factory _EditMessage({required MessageModel message}) = _$_EditMessage;

  MessageModel get message;
  @JsonKey(ignore: true)
  _$EditMessageCopyWith<_EditMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendGifCopyWith<$Res> {
  factory $SendGifCopyWith(SendGif value, $Res Function(SendGif) then) =
      _$SendGifCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendGifCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements $SendGifCopyWith<$Res> {
  _$SendGifCopyWithImpl(SendGif _value, $Res Function(SendGif) _then)
      : super(_value, (v) => _then(v as SendGif));

  @override
  SendGif get _value => super._value as SendGif;
}

/// @nodoc

class _$SendGif implements SendGif {
  const _$SendGif();

  @override
  String toString() {
    return 'SendMessageFormEvent.sendGif()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SendGif);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return sendGif();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return sendGif?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (sendGif != null) {
      return sendGif();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return sendGif(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return sendGif?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (sendGif != null) {
      return sendGif(this);
    }
    return orElse();
  }
}

abstract class SendGif implements SendMessageFormEvent {
  const factory SendGif() = _$SendGif;
}

/// @nodoc
abstract class _$UpdateMessageCopyWith<$Res> {
  factory _$UpdateMessageCopyWith(
          _UpdateMessage value, $Res Function(_UpdateMessage) then) =
      __$UpdateMessageCopyWithImpl<$Res>;
  $Res call({MessageModel message});

  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class __$UpdateMessageCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$UpdateMessageCopyWith<$Res> {
  __$UpdateMessageCopyWithImpl(
      _UpdateMessage _value, $Res Function(_UpdateMessage) _then)
      : super(_value, (v) => _then(v as _UpdateMessage));

  @override
  _UpdateMessage get _value => super._value as _UpdateMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UpdateMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ));
  }

  @override
  $MessageModelCopyWith<$Res> get message {
    return $MessageModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$_UpdateMessage implements _UpdateMessage {
  const _$_UpdateMessage({required this.message});

  @override
  final MessageModel message;

  @override
  String toString() {
    return 'SendMessageFormEvent.updateMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UpdateMessageCopyWith<_UpdateMessage> get copyWith =>
      __$UpdateMessageCopyWithImpl<_UpdateMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return updateMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return updateMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (updateMessage != null) {
      return updateMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return updateMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return updateMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (updateMessage != null) {
      return updateMessage(this);
    }
    return orElse();
  }
}

abstract class _UpdateMessage implements SendMessageFormEvent {
  const factory _UpdateMessage({required MessageModel message}) =
      _$_UpdateMessage;

  MessageModel get message;
  @JsonKey(ignore: true)
  _$UpdateMessageCopyWith<_UpdateMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReplyMessageCopyWith<$Res> {
  factory _$ReplyMessageCopyWith(
          _ReplyMessage value, $Res Function(_ReplyMessage) then) =
      __$ReplyMessageCopyWithImpl<$Res>;
  $Res call({MessageModel message, int messageIndex});

  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class __$ReplyMessageCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$ReplyMessageCopyWith<$Res> {
  __$ReplyMessageCopyWithImpl(
      _ReplyMessage _value, $Res Function(_ReplyMessage) _then)
      : super(_value, (v) => _then(v as _ReplyMessage));

  @override
  _ReplyMessage get _value => super._value as _ReplyMessage;

  @override
  $Res call({
    Object? message = freezed,
    Object? messageIndex = freezed,
  }) {
    return _then(_ReplyMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      messageIndex: messageIndex == freezed
          ? _value.messageIndex
          : messageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $MessageModelCopyWith<$Res> get message {
    return $MessageModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$_ReplyMessage implements _ReplyMessage {
  const _$_ReplyMessage({required this.message, required this.messageIndex});

  @override
  final MessageModel message;
  @override
  final int messageIndex;

  @override
  String toString() {
    return 'SendMessageFormEvent.replyMessage(message: $message, messageIndex: $messageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReplyMessage &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.messageIndex, messageIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(messageIndex));

  @JsonKey(ignore: true)
  @override
  _$ReplyMessageCopyWith<_ReplyMessage> get copyWith =>
      __$ReplyMessageCopyWithImpl<_ReplyMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return replyMessage(message, messageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return replyMessage?.call(message, messageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (replyMessage != null) {
      return replyMessage(message, messageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return replyMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return replyMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (replyMessage != null) {
      return replyMessage(this);
    }
    return orElse();
  }
}

abstract class _ReplyMessage implements SendMessageFormEvent {
  const factory _ReplyMessage(
      {required MessageModel message,
      required int messageIndex}) = _$_ReplyMessage;

  MessageModel get message;
  int get messageIndex;
  @JsonKey(ignore: true)
  _$ReplyMessageCopyWith<_ReplyMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ForwardMessageCopyWith<$Res> {
  factory _$ForwardMessageCopyWith(
          _ForwardMessage value, $Res Function(_ForwardMessage) then) =
      __$ForwardMessageCopyWithImpl<$Res>;
  $Res call({MessageModel message, Chat chat});

  $MessageModelCopyWith<$Res> get message;
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$ForwardMessageCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$ForwardMessageCopyWith<$Res> {
  __$ForwardMessageCopyWithImpl(
      _ForwardMessage _value, $Res Function(_ForwardMessage) _then)
      : super(_value, (v) => _then(v as _ForwardMessage));

  @override
  _ForwardMessage get _value => super._value as _ForwardMessage;

  @override
  $Res call({
    Object? message = freezed,
    Object? chat = freezed,
  }) {
    return _then(_ForwardMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }

  @override
  $MessageModelCopyWith<$Res> get message {
    return $MessageModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$_ForwardMessage implements _ForwardMessage {
  const _$_ForwardMessage({required this.message, required this.chat});

  @override
  final MessageModel message;
  @override
  final Chat chat;

  @override
  String toString() {
    return 'SendMessageFormEvent.forwardMessage(message: $message, chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForwardMessage &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  _$ForwardMessageCopyWith<_ForwardMessage> get copyWith =>
      __$ForwardMessageCopyWithImpl<_ForwardMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return forwardMessage(message, chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return forwardMessage?.call(message, chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (forwardMessage != null) {
      return forwardMessage(message, chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return forwardMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return forwardMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (forwardMessage != null) {
      return forwardMessage(this);
    }
    return orElse();
  }
}

abstract class _ForwardMessage implements SendMessageFormEvent {
  const factory _ForwardMessage(
      {required MessageModel message, required Chat chat}) = _$_ForwardMessage;

  MessageModel get message;
  Chat get chat;
  @JsonKey(ignore: true)
  _$ForwardMessageCopyWith<_ForwardMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelEditCopyWith<$Res> {
  factory _$CancelEditCopyWith(
          _CancelEdit value, $Res Function(_CancelEdit) then) =
      __$CancelEditCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelEditCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$CancelEditCopyWith<$Res> {
  __$CancelEditCopyWithImpl(
      _CancelEdit _value, $Res Function(_CancelEdit) _then)
      : super(_value, (v) => _then(v as _CancelEdit));

  @override
  _CancelEdit get _value => super._value as _CancelEdit;
}

/// @nodoc

class _$_CancelEdit implements _CancelEdit {
  const _$_CancelEdit();

  @override
  String toString() {
    return 'SendMessageFormEvent.cancelEdit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return cancelEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return cancelEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (cancelEdit != null) {
      return cancelEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return cancelEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return cancelEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (cancelEdit != null) {
      return cancelEdit(this);
    }
    return orElse();
  }
}

abstract class _CancelEdit implements SendMessageFormEvent {
  const factory _CancelEdit() = _$_CancelEdit;
}

/// @nodoc
abstract class _$CancelReplyCopyWith<$Res> {
  factory _$CancelReplyCopyWith(
          _CancelReply value, $Res Function(_CancelReply) then) =
      __$CancelReplyCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelReplyCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$CancelReplyCopyWith<$Res> {
  __$CancelReplyCopyWithImpl(
      _CancelReply _value, $Res Function(_CancelReply) _then)
      : super(_value, (v) => _then(v as _CancelReply));

  @override
  _CancelReply get _value => super._value as _CancelReply;
}

/// @nodoc

class _$_CancelReply implements _CancelReply {
  const _$_CancelReply();

  @override
  String toString() {
    return 'SendMessageFormEvent.cancelReply()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelReply);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return cancelReply();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return cancelReply?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (cancelReply != null) {
      return cancelReply();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return cancelReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return cancelReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (cancelReply != null) {
      return cancelReply(this);
    }
    return orElse();
  }
}

abstract class _CancelReply implements SendMessageFormEvent {
  const factory _CancelReply() = _$_CancelReply;
}

/// @nodoc
abstract class _$CancelForwardCopyWith<$Res> {
  factory _$CancelForwardCopyWith(
          _CancelForward value, $Res Function(_CancelForward) then) =
      __$CancelForwardCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelForwardCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$CancelForwardCopyWith<$Res> {
  __$CancelForwardCopyWithImpl(
      _CancelForward _value, $Res Function(_CancelForward) _then)
      : super(_value, (v) => _then(v as _CancelForward));

  @override
  _CancelForward get _value => super._value as _CancelForward;
}

/// @nodoc

class _$_CancelForward implements _CancelForward {
  const _$_CancelForward();

  @override
  String toString() {
    return 'SendMessageFormEvent.cancelForward()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelForward);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return cancelForward();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return cancelForward?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (cancelForward != null) {
      return cancelForward();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return cancelForward(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return cancelForward?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (cancelForward != null) {
      return cancelForward(this);
    }
    return orElse();
  }
}

abstract class _CancelForward implements SendMessageFormEvent {
  const factory _CancelForward() = _$_CancelForward;
}

/// @nodoc
abstract class _$ClearMessageCopyWith<$Res> {
  factory _$ClearMessageCopyWith(
          _ClearMessage value, $Res Function(_ClearMessage) then) =
      __$ClearMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearMessageCopyWithImpl<$Res>
    extends _$SendMessageFormEventCopyWithImpl<$Res>
    implements _$ClearMessageCopyWith<$Res> {
  __$ClearMessageCopyWithImpl(
      _ClearMessage _value, $Res Function(_ClearMessage) _then)
      : super(_value, (v) => _then(v as _ClearMessage));

  @override
  _ClearMessage get _value => super._value as _ClearMessage;
}

/// @nodoc

class _$_ClearMessage implements _ClearMessage {
  const _$_ClearMessage();

  @override
  String toString() {
    return 'SendMessageFormEvent.clearMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) updateText,
    required TResult Function() sendMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() sendGif,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message, int messageIndex)
        replyMessage,
    required TResult Function(MessageModel message, Chat chat) forwardMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function() clearMessage,
  }) {
    return clearMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
  }) {
    return clearMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? updateText,
    TResult Function()? sendMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? sendGif,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message, int messageIndex)? replyMessage,
    TResult Function(MessageModel message, Chat chat)? forwardMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function()? clearMessage,
    required TResult orElse(),
  }) {
    if (clearMessage != null) {
      return clearMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateText value) updateText,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(_UpdateMessage value) updateMessage,
    required TResult Function(_ReplyMessage value) replyMessage,
    required TResult Function(_ForwardMessage value) forwardMessage,
    required TResult Function(_CancelEdit value) cancelEdit,
    required TResult Function(_CancelReply value) cancelReply,
    required TResult Function(_CancelForward value) cancelForward,
    required TResult Function(_ClearMessage value) clearMessage,
  }) {
    return clearMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
  }) {
    return clearMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateText value)? updateText,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(SendGif value)? sendGif,
    TResult Function(_UpdateMessage value)? updateMessage,
    TResult Function(_ReplyMessage value)? replyMessage,
    TResult Function(_ForwardMessage value)? forwardMessage,
    TResult Function(_CancelEdit value)? cancelEdit,
    TResult Function(_CancelReply value)? cancelReply,
    TResult Function(_CancelForward value)? cancelForward,
    TResult Function(_ClearMessage value)? clearMessage,
    required TResult orElse(),
  }) {
    if (clearMessage != null) {
      return clearMessage(this);
    }
    return orElse();
  }
}

abstract class _ClearMessage implements SendMessageFormEvent {
  const factory _ClearMessage() = _$_ClearMessage;
}

/// @nodoc
class _$SendMessageFormStateTearOff {
  const _$SendMessageFormStateTearOff();

  _SendMessageFormState call(
      {required MessageModel message,
      required bool isEdit,
      required bool isReply,
      required bool isForward,
      required bool isGif}) {
    return _SendMessageFormState(
      message: message,
      isEdit: isEdit,
      isReply: isReply,
      isForward: isForward,
      isGif: isGif,
    );
  }
}

/// @nodoc
const $SendMessageFormState = _$SendMessageFormStateTearOff();

/// @nodoc
mixin _$SendMessageFormState {
  MessageModel get message => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;
  bool get isReply => throw _privateConstructorUsedError;
  bool get isForward => throw _privateConstructorUsedError;
  bool get isGif => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendMessageFormStateCopyWith<SendMessageFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageFormStateCopyWith<$Res> {
  factory $SendMessageFormStateCopyWith(SendMessageFormState value,
          $Res Function(SendMessageFormState) then) =
      _$SendMessageFormStateCopyWithImpl<$Res>;
  $Res call(
      {MessageModel message,
      bool isEdit,
      bool isReply,
      bool isForward,
      bool isGif});

  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class _$SendMessageFormStateCopyWithImpl<$Res>
    implements $SendMessageFormStateCopyWith<$Res> {
  _$SendMessageFormStateCopyWithImpl(this._value, this._then);

  final SendMessageFormState _value;
  // ignore: unused_field
  final $Res Function(SendMessageFormState) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? isEdit = freezed,
    Object? isReply = freezed,
    Object? isForward = freezed,
    Object? isGif = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      isEdit: isEdit == freezed
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      isReply: isReply == freezed
          ? _value.isReply
          : isReply // ignore: cast_nullable_to_non_nullable
              as bool,
      isForward: isForward == freezed
          ? _value.isForward
          : isForward // ignore: cast_nullable_to_non_nullable
              as bool,
      isGif: isGif == freezed
          ? _value.isGif
          : isGif // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $MessageModelCopyWith<$Res> get message {
    return $MessageModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$SendMessageFormStateCopyWith<$Res>
    implements $SendMessageFormStateCopyWith<$Res> {
  factory _$SendMessageFormStateCopyWith(_SendMessageFormState value,
          $Res Function(_SendMessageFormState) then) =
      __$SendMessageFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MessageModel message,
      bool isEdit,
      bool isReply,
      bool isForward,
      bool isGif});

  @override
  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class __$SendMessageFormStateCopyWithImpl<$Res>
    extends _$SendMessageFormStateCopyWithImpl<$Res>
    implements _$SendMessageFormStateCopyWith<$Res> {
  __$SendMessageFormStateCopyWithImpl(
      _SendMessageFormState _value, $Res Function(_SendMessageFormState) _then)
      : super(_value, (v) => _then(v as _SendMessageFormState));

  @override
  _SendMessageFormState get _value => super._value as _SendMessageFormState;

  @override
  $Res call({
    Object? message = freezed,
    Object? isEdit = freezed,
    Object? isReply = freezed,
    Object? isForward = freezed,
    Object? isGif = freezed,
  }) {
    return _then(_SendMessageFormState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      isEdit: isEdit == freezed
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      isReply: isReply == freezed
          ? _value.isReply
          : isReply // ignore: cast_nullable_to_non_nullable
              as bool,
      isForward: isForward == freezed
          ? _value.isForward
          : isForward // ignore: cast_nullable_to_non_nullable
              as bool,
      isGif: isGif == freezed
          ? _value.isGif
          : isGif // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SendMessageFormState implements _SendMessageFormState {
  const _$_SendMessageFormState(
      {required this.message,
      required this.isEdit,
      required this.isReply,
      required this.isForward,
      required this.isGif});

  @override
  final MessageModel message;
  @override
  final bool isEdit;
  @override
  final bool isReply;
  @override
  final bool isForward;
  @override
  final bool isGif;

  @override
  String toString() {
    return 'SendMessageFormState(message: $message, isEdit: $isEdit, isReply: $isReply, isForward: $isForward, isGif: $isGif)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendMessageFormState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isEdit, isEdit) &&
            const DeepCollectionEquality().equals(other.isReply, isReply) &&
            const DeepCollectionEquality().equals(other.isForward, isForward) &&
            const DeepCollectionEquality().equals(other.isGif, isGif));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isEdit),
      const DeepCollectionEquality().hash(isReply),
      const DeepCollectionEquality().hash(isForward),
      const DeepCollectionEquality().hash(isGif));

  @JsonKey(ignore: true)
  @override
  _$SendMessageFormStateCopyWith<_SendMessageFormState> get copyWith =>
      __$SendMessageFormStateCopyWithImpl<_SendMessageFormState>(
          this, _$identity);
}

abstract class _SendMessageFormState implements SendMessageFormState {
  const factory _SendMessageFormState(
      {required MessageModel message,
      required bool isEdit,
      required bool isReply,
      required bool isForward,
      required bool isGif}) = _$_SendMessageFormState;

  @override
  MessageModel get message;
  @override
  bool get isEdit;
  @override
  bool get isReply;
  @override
  bool get isForward;
  @override
  bool get isGif;
  @override
  @JsonKey(ignore: true)
  _$SendMessageFormStateCopyWith<_SendMessageFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
