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

  WriteMessage writeMessage({required String text}) {
    return WriteMessage(
      text: text,
    );
  }

  OpenChat openChat(
      {required String chatId,
      required String sender,
      required String receiver}) {
    return OpenChat(
      chatId: chatId,
      sender: sender,
      receiver: receiver,
    );
  }

  SendMessage sendMessage() {
    return const SendMessage();
  }

  OnSend onSend() {
    return const OnSend();
  }

  OnSeen onSeen() {
    return const OnSeen();
  }

  LoadMessages loadMessages() {
    return const LoadMessages();
  }

  AddMessage addMessage({required MessageModel message}) {
    return AddMessage(
      message: message,
    );
  }

  RemoveMessage removeMessage({required String messageId}) {
    return RemoveMessage(
      messageId: messageId,
    );
  }

  UpdateMessages updateMessages({required List<MessageModel> messages}) {
    return UpdateMessages(
      messages: messages,
    );
  }

  ReplyMessage replyMessage({required String messageId}) {
    return ReplyMessage(
      messageId: messageId,
    );
  }

  ForwardMessage forwardMessage(
      {required String messageId, required String chatId}) {
    return ForwardMessage(
      messageId: messageId,
      chatId: chatId,
    );
  }

  EditMessage editMessage({required String messageId}) {
    return EditMessage(
      messageId: messageId,
    );
  }
}

/// @nodoc
const $MessageEvent = _$MessageEventTearOff();

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
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
abstract class $WriteMessageCopyWith<$Res> {
  factory $WriteMessageCopyWith(
          WriteMessage value, $Res Function(WriteMessage) then) =
      _$WriteMessageCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$WriteMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $WriteMessageCopyWith<$Res> {
  _$WriteMessageCopyWithImpl(
      WriteMessage _value, $Res Function(WriteMessage) _then)
      : super(_value, (v) => _then(v as WriteMessage));

  @override
  WriteMessage get _value => super._value as WriteMessage;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(WriteMessage(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WriteMessage implements WriteMessage {
  const _$WriteMessage({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'MessageEvent.writeMessage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WriteMessage &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  $WriteMessageCopyWith<WriteMessage> get copyWith =>
      _$WriteMessageCopyWithImpl<WriteMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return writeMessage(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return writeMessage?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (writeMessage != null) {
      return writeMessage(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return writeMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return writeMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (writeMessage != null) {
      return writeMessage(this);
    }
    return orElse();
  }
}

abstract class WriteMessage implements MessageEvent {
  const factory WriteMessage({required String text}) = _$WriteMessage;

  String get text;
  @JsonKey(ignore: true)
  $WriteMessageCopyWith<WriteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenChatCopyWith<$Res> {
  factory $OpenChatCopyWith(OpenChat value, $Res Function(OpenChat) then) =
      _$OpenChatCopyWithImpl<$Res>;
  $Res call({String chatId, String sender, String receiver});
}

/// @nodoc
class _$OpenChatCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $OpenChatCopyWith<$Res> {
  _$OpenChatCopyWithImpl(OpenChat _value, $Res Function(OpenChat) _then)
      : super(_value, (v) => _then(v as OpenChat));

  @override
  OpenChat get _value => super._value as OpenChat;

  @override
  $Res call({
    Object? chatId = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
  }) {
    return _then(OpenChat(
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OpenChat implements OpenChat {
  const _$OpenChat(
      {required this.chatId, required this.sender, required this.receiver});

  @override
  final String chatId;
  @override
  final String sender;
  @override
  final String receiver;

  @override
  String toString() {
    return 'MessageEvent.openChat(chatId: $chatId, sender: $sender, receiver: $receiver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenChat &&
            const DeepCollectionEquality().equals(other.chatId, chatId) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.receiver, receiver));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatId),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(receiver));

  @JsonKey(ignore: true)
  @override
  $OpenChatCopyWith<OpenChat> get copyWith =>
      _$OpenChatCopyWithImpl<OpenChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return openChat(chatId, sender, receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return openChat?.call(chatId, sender, receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (openChat != null) {
      return openChat(chatId, sender, receiver);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return openChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return openChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (openChat != null) {
      return openChat(this);
    }
    return orElse();
  }
}

abstract class OpenChat implements MessageEvent {
  const factory OpenChat(
      {required String chatId,
      required String sender,
      required String receiver}) = _$OpenChat;

  String get chatId;
  String get sender;
  String get receiver;
  @JsonKey(ignore: true)
  $OpenChatCopyWith<OpenChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageCopyWith<$Res> {
  factory $SendMessageCopyWith(
          SendMessage value, $Res Function(SendMessage) then) =
      _$SendMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(
      SendMessage _value, $Res Function(SendMessage) _then)
      : super(_value, (v) => _then(v as SendMessage));

  @override
  SendMessage get _value => super._value as SendMessage;
}

/// @nodoc

class _$SendMessage implements SendMessage {
  const _$SendMessage();

  @override
  String toString() {
    return 'MessageEvent.sendMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SendMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return sendMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return sendMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
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
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements MessageEvent {
  const factory SendMessage() = _$SendMessage;
}

/// @nodoc
abstract class $OnSendCopyWith<$Res> {
  factory $OnSendCopyWith(OnSend value, $Res Function(OnSend) then) =
      _$OnSendCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnSendCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $OnSendCopyWith<$Res> {
  _$OnSendCopyWithImpl(OnSend _value, $Res Function(OnSend) _then)
      : super(_value, (v) => _then(v as OnSend));

  @override
  OnSend get _value => super._value as OnSend;
}

/// @nodoc

class _$OnSend implements OnSend {
  const _$OnSend();

  @override
  String toString() {
    return 'MessageEvent.onSend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnSend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return onSend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return onSend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (onSend != null) {
      return onSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return onSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return onSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (onSend != null) {
      return onSend(this);
    }
    return orElse();
  }
}

abstract class OnSend implements MessageEvent {
  const factory OnSend() = _$OnSend;
}

/// @nodoc
abstract class $OnSeenCopyWith<$Res> {
  factory $OnSeenCopyWith(OnSeen value, $Res Function(OnSeen) then) =
      _$OnSeenCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnSeenCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $OnSeenCopyWith<$Res> {
  _$OnSeenCopyWithImpl(OnSeen _value, $Res Function(OnSeen) _then)
      : super(_value, (v) => _then(v as OnSeen));

  @override
  OnSeen get _value => super._value as OnSeen;
}

/// @nodoc

class _$OnSeen implements OnSeen {
  const _$OnSeen();

  @override
  String toString() {
    return 'MessageEvent.onSeen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnSeen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return onSeen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return onSeen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (onSeen != null) {
      return onSeen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return onSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return onSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (onSeen != null) {
      return onSeen(this);
    }
    return orElse();
  }
}

abstract class OnSeen implements MessageEvent {
  const factory OnSeen() = _$OnSeen;
}

/// @nodoc
abstract class $LoadMessagesCopyWith<$Res> {
  factory $LoadMessagesCopyWith(
          LoadMessages value, $Res Function(LoadMessages) then) =
      _$LoadMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadMessagesCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $LoadMessagesCopyWith<$Res> {
  _$LoadMessagesCopyWithImpl(
      LoadMessages _value, $Res Function(LoadMessages) _then)
      : super(_value, (v) => _then(v as LoadMessages));

  @override
  LoadMessages get _value => super._value as LoadMessages;
}

/// @nodoc

class _$LoadMessages implements LoadMessages {
  const _$LoadMessages();

  @override
  String toString() {
    return 'MessageEvent.loadMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return loadMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return loadMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return loadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return loadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(this);
    }
    return orElse();
  }
}

abstract class LoadMessages implements MessageEvent {
  const factory LoadMessages() = _$LoadMessages;
}

/// @nodoc
abstract class $AddMessageCopyWith<$Res> {
  factory $AddMessageCopyWith(
          AddMessage value, $Res Function(AddMessage) then) =
      _$AddMessageCopyWithImpl<$Res>;
  $Res call({MessageModel message});

  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class _$AddMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $AddMessageCopyWith<$Res> {
  _$AddMessageCopyWithImpl(AddMessage _value, $Res Function(AddMessage) _then)
      : super(_value, (v) => _then(v as AddMessage));

  @override
  AddMessage get _value => super._value as AddMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AddMessage(
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

class _$AddMessage implements AddMessage {
  const _$AddMessage({required this.message});

  @override
  final MessageModel message;

  @override
  String toString() {
    return 'MessageEvent.addMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AddMessageCopyWith<AddMessage> get copyWith =>
      _$AddMessageCopyWithImpl<AddMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return addMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return addMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return addMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class AddMessage implements MessageEvent {
  const factory AddMessage({required MessageModel message}) = _$AddMessage;

  MessageModel get message;
  @JsonKey(ignore: true)
  $AddMessageCopyWith<AddMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveMessageCopyWith<$Res> {
  factory $RemoveMessageCopyWith(
          RemoveMessage value, $Res Function(RemoveMessage) then) =
      _$RemoveMessageCopyWithImpl<$Res>;
  $Res call({String messageId});
}

/// @nodoc
class _$RemoveMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $RemoveMessageCopyWith<$Res> {
  _$RemoveMessageCopyWithImpl(
      RemoveMessage _value, $Res Function(RemoveMessage) _then)
      : super(_value, (v) => _then(v as RemoveMessage));

  @override
  RemoveMessage get _value => super._value as RemoveMessage;

  @override
  $Res call({
    Object? messageId = freezed,
  }) {
    return _then(RemoveMessage(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveMessage implements RemoveMessage {
  const _$RemoveMessage({required this.messageId});

  @override
  final String messageId;

  @override
  String toString() {
    return 'MessageEvent.removeMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveMessage &&
            const DeepCollectionEquality().equals(other.messageId, messageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messageId));

  @JsonKey(ignore: true)
  @override
  $RemoveMessageCopyWith<RemoveMessage> get copyWith =>
      _$RemoveMessageCopyWithImpl<RemoveMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return removeMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return removeMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (removeMessage != null) {
      return removeMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return removeMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return removeMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (removeMessage != null) {
      return removeMessage(this);
    }
    return orElse();
  }
}

abstract class RemoveMessage implements MessageEvent {
  const factory RemoveMessage({required String messageId}) = _$RemoveMessage;

  String get messageId;
  @JsonKey(ignore: true)
  $RemoveMessageCopyWith<RemoveMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMessagesCopyWith<$Res> {
  factory $UpdateMessagesCopyWith(
          UpdateMessages value, $Res Function(UpdateMessages) then) =
      _$UpdateMessagesCopyWithImpl<$Res>;
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class _$UpdateMessagesCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $UpdateMessagesCopyWith<$Res> {
  _$UpdateMessagesCopyWithImpl(
      UpdateMessages _value, $Res Function(UpdateMessages) _then)
      : super(_value, (v) => _then(v as UpdateMessages));

  @override
  UpdateMessages get _value => super._value as UpdateMessages;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(UpdateMessages(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$UpdateMessages implements UpdateMessages {
  const _$UpdateMessages({required this.messages});

  @override
  final List<MessageModel> messages;

  @override
  String toString() {
    return 'MessageEvent.updateMessages(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateMessages &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  $UpdateMessagesCopyWith<UpdateMessages> get copyWith =>
      _$UpdateMessagesCopyWithImpl<UpdateMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return updateMessages(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return updateMessages?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (updateMessages != null) {
      return updateMessages(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return updateMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return updateMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (updateMessages != null) {
      return updateMessages(this);
    }
    return orElse();
  }
}

abstract class UpdateMessages implements MessageEvent {
  const factory UpdateMessages({required List<MessageModel> messages}) =
      _$UpdateMessages;

  List<MessageModel> get messages;
  @JsonKey(ignore: true)
  $UpdateMessagesCopyWith<UpdateMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyMessageCopyWith<$Res> {
  factory $ReplyMessageCopyWith(
          ReplyMessage value, $Res Function(ReplyMessage) then) =
      _$ReplyMessageCopyWithImpl<$Res>;
  $Res call({String messageId});
}

/// @nodoc
class _$ReplyMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $ReplyMessageCopyWith<$Res> {
  _$ReplyMessageCopyWithImpl(
      ReplyMessage _value, $Res Function(ReplyMessage) _then)
      : super(_value, (v) => _then(v as ReplyMessage));

  @override
  ReplyMessage get _value => super._value as ReplyMessage;

  @override
  $Res call({
    Object? messageId = freezed,
  }) {
    return _then(ReplyMessage(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReplyMessage implements ReplyMessage {
  const _$ReplyMessage({required this.messageId});

  @override
  final String messageId;

  @override
  String toString() {
    return 'MessageEvent.replyMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReplyMessage &&
            const DeepCollectionEquality().equals(other.messageId, messageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messageId));

  @JsonKey(ignore: true)
  @override
  $ReplyMessageCopyWith<ReplyMessage> get copyWith =>
      _$ReplyMessageCopyWithImpl<ReplyMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return replyMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return replyMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (replyMessage != null) {
      return replyMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return replyMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return replyMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (replyMessage != null) {
      return replyMessage(this);
    }
    return orElse();
  }
}

abstract class ReplyMessage implements MessageEvent {
  const factory ReplyMessage({required String messageId}) = _$ReplyMessage;

  String get messageId;
  @JsonKey(ignore: true)
  $ReplyMessageCopyWith<ReplyMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForwardMessageCopyWith<$Res> {
  factory $ForwardMessageCopyWith(
          ForwardMessage value, $Res Function(ForwardMessage) then) =
      _$ForwardMessageCopyWithImpl<$Res>;
  $Res call({String messageId, String chatId});
}

/// @nodoc
class _$ForwardMessageCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $ForwardMessageCopyWith<$Res> {
  _$ForwardMessageCopyWithImpl(
      ForwardMessage _value, $Res Function(ForwardMessage) _then)
      : super(_value, (v) => _then(v as ForwardMessage));

  @override
  ForwardMessage get _value => super._value as ForwardMessage;

  @override
  $Res call({
    Object? messageId = freezed,
    Object? chatId = freezed,
  }) {
    return _then(ForwardMessage(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForwardMessage implements ForwardMessage {
  const _$ForwardMessage({required this.messageId, required this.chatId});

  @override
  final String messageId;
  @override
  final String chatId;

  @override
  String toString() {
    return 'MessageEvent.forwardMessage(messageId: $messageId, chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForwardMessage &&
            const DeepCollectionEquality().equals(other.messageId, messageId) &&
            const DeepCollectionEquality().equals(other.chatId, chatId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messageId),
      const DeepCollectionEquality().hash(chatId));

  @JsonKey(ignore: true)
  @override
  $ForwardMessageCopyWith<ForwardMessage> get copyWith =>
      _$ForwardMessageCopyWithImpl<ForwardMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return forwardMessage(messageId, chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return forwardMessage?.call(messageId, chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (forwardMessage != null) {
      return forwardMessage(messageId, chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return forwardMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return forwardMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (forwardMessage != null) {
      return forwardMessage(this);
    }
    return orElse();
  }
}

abstract class ForwardMessage implements MessageEvent {
  const factory ForwardMessage(
      {required String messageId, required String chatId}) = _$ForwardMessage;

  String get messageId;
  String get chatId;
  @JsonKey(ignore: true)
  $ForwardMessageCopyWith<ForwardMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditMessageCopyWith<$Res> {
  factory $EditMessageCopyWith(
          EditMessage value, $Res Function(EditMessage) then) =
      _$EditMessageCopyWithImpl<$Res>;
  $Res call({String messageId});
}

/// @nodoc
class _$EditMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $EditMessageCopyWith<$Res> {
  _$EditMessageCopyWithImpl(
      EditMessage _value, $Res Function(EditMessage) _then)
      : super(_value, (v) => _then(v as EditMessage));

  @override
  EditMessage get _value => super._value as EditMessage;

  @override
  $Res call({
    Object? messageId = freezed,
  }) {
    return _then(EditMessage(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditMessage implements EditMessage {
  const _$EditMessage({required this.messageId});

  @override
  final String messageId;

  @override
  String toString() {
    return 'MessageEvent.editMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditMessage &&
            const DeepCollectionEquality().equals(other.messageId, messageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messageId));

  @JsonKey(ignore: true)
  @override
  $EditMessageCopyWith<EditMessage> get copyWith =>
      _$EditMessageCopyWithImpl<EditMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function() sendMessage,
    required TResult Function() onSend,
    required TResult Function() onSeen,
    required TResult Function() loadMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages) updateMessages,
    required TResult Function(String messageId) replyMessage,
    required TResult Function(String messageId, String chatId) forwardMessage,
    required TResult Function(String messageId) editMessage,
  }) {
    return editMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
  }) {
    return editMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function()? sendMessage,
    TResult Function()? onSend,
    TResult Function()? onSeen,
    TResult Function()? loadMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateMessages,
    TResult Function(String messageId)? replyMessage,
    TResult Function(String messageId, String chatId)? forwardMessage,
    TResult Function(String messageId)? editMessage,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadMessages value) loadMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateMessages value) updateMessages,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
  }) {
    return editMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
  }) {
    return editMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadMessages value)? loadMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateMessages value)? updateMessages,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(this);
    }
    return orElse();
  }
}

abstract class EditMessage implements MessageEvent {
  const factory EditMessage({required String messageId}) = _$EditMessage;

  String get messageId;
  @JsonKey(ignore: true)
  $EditMessageCopyWith<EditMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageState _$MessageStateFromJson(Map<String, dynamic> json) {
  return _MessageState.fromJson(json);
}

/// @nodoc
class _$MessageStateTearOff {
  const _$MessageStateTearOff();

  _MessageState call(
      {required String chatId,
      required MessageModel message,
      required List<MessageModel> messages}) {
    return _MessageState(
      chatId: chatId,
      message: message,
      messages: messages,
    );
  }

  MessageState fromJson(Map<String, Object?> json) {
    return MessageState.fromJson(json);
  }
}

/// @nodoc
const $MessageState = _$MessageStateTearOff();

/// @nodoc
mixin _$MessageState {
  String get chatId => throw _privateConstructorUsedError;
  MessageModel get message => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageStateCopyWith<MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
  $Res call({String chatId, MessageModel message, List<MessageModel> messages});

  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;

  @override
  $Res call({
    Object? chatId = freezed,
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
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
abstract class _$MessageStateCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$MessageStateCopyWith(
          _MessageState value, $Res Function(_MessageState) then) =
      __$MessageStateCopyWithImpl<$Res>;
  @override
  $Res call({String chatId, MessageModel message, List<MessageModel> messages});

  @override
  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class __$MessageStateCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$MessageStateCopyWith<$Res> {
  __$MessageStateCopyWithImpl(
      _MessageState _value, $Res Function(_MessageState) _then)
      : super(_value, (v) => _then(v as _MessageState));

  @override
  _MessageState get _value => super._value as _MessageState;

  @override
  $Res call({
    Object? chatId = freezed,
    Object? message = freezed,
    Object? messages = freezed,
  }) {
    return _then(_MessageState(
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageState implements _MessageState {
  const _$_MessageState(
      {required this.chatId, required this.message, required this.messages});

  factory _$_MessageState.fromJson(Map<String, dynamic> json) =>
      _$$_MessageStateFromJson(json);

  @override
  final String chatId;
  @override
  final MessageModel message;
  @override
  final List<MessageModel> messages;

  @override
  String toString() {
    return 'MessageState(chatId: $chatId, message: $message, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageState &&
            const DeepCollectionEquality().equals(other.chatId, chatId) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatId),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  _$MessageStateCopyWith<_MessageState> get copyWith =>
      __$MessageStateCopyWithImpl<_MessageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageStateToJson(this);
  }
}

abstract class _MessageState implements MessageState {
  const factory _MessageState(
      {required String chatId,
      required MessageModel message,
      required List<MessageModel> messages}) = _$_MessageState;

  factory _MessageState.fromJson(Map<String, dynamic> json) =
      _$_MessageState.fromJson;

  @override
  String get chatId;
  @override
  MessageModel get message;
  @override
  List<MessageModel> get messages;
  @override
  @JsonKey(ignore: true)
  _$MessageStateCopyWith<_MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
