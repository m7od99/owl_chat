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

  SendMessage sendMessage({required Chat chat}) {
    return SendMessage(
      chat: chat,
    );
  }

  OnSend onSend({required bool isSend}) {
    return OnSend(
      isSend: isSend,
    );
  }

  OnSeen onSeen({required String id}) {
    return OnSeen(
      id: id,
    );
  }

  LoadChatRoomMessages loadChatRoomMessages() {
    return const LoadChatRoomMessages();
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

  UpdateChatRoomMessages updateChatRoomMessages(
      {required List<MessageModel> messages}) {
    return UpdateChatRoomMessages(
      messages: messages,
    );
  }

  UpdateMessage updateMessage({required MessageModel message}) {
    return UpdateMessage(
      message: message,
    );
  }

  ReplyMessage replyMessage({required MessageModel message}) {
    return ReplyMessage(
      message: message,
    );
  }

  ForwardMessage forwardMessage(
      {required MessageModel message, required String chatId}) {
    return ForwardMessage(
      message: message,
      chatId: chatId,
    );
  }

  EditMessage editMessage({required MessageModel message}) {
    return EditMessage(
      message: message,
    );
  }

  ClearMessage clearMessage() {
    return const ClearMessage();
  }

  CancelEdit cancelEdit() {
    return const CancelEdit();
  }

  CancelReply cancelReply() {
    return const CancelReply();
  }

  CancelForward cancelForward() {
    return const CancelForward();
  }

  UpdateChatState updateChatState({required Chat chat}) {
    return UpdateChatState(
      chat: chat,
    );
  }

  UpdateChat updateChat({required Chat chat}) {
    return UpdateChat(
      chat: chat,
    );
  }

  SendGif sendGif({required Chat chat}) {
    return SendGif(
      chat: chat,
    );
  }

  CloseChat closeChat() {
    return const CloseChat();
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
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return writeMessage(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return writeMessage?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return openChat(chatId, sender, receiver);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return openChat?.call(chatId, sender, receiver);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$SendMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(
      SendMessage _value, $Res Function(SendMessage) _then)
      : super(_value, (v) => _then(v as SendMessage));

  @override
  SendMessage get _value => super._value as SendMessage;

  @override
  $Res call({
    Object? chat = freezed,
  }) {
    return _then(SendMessage(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$SendMessage implements SendMessage {
  const _$SendMessage({required this.chat});

  @override
  final Chat chat;

  @override
  String toString() {
    return 'MessageEvent.sendMessage(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendMessage &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  $SendMessageCopyWith<SendMessage> get copyWith =>
      _$SendMessageCopyWithImpl<SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return sendMessage(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return sendMessage?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(chat);
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements MessageEvent {
  const factory SendMessage({required Chat chat}) = _$SendMessage;

  Chat get chat;
  @JsonKey(ignore: true)
  $SendMessageCopyWith<SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnSendCopyWith<$Res> {
  factory $OnSendCopyWith(OnSend value, $Res Function(OnSend) then) =
      _$OnSendCopyWithImpl<$Res>;
  $Res call({bool isSend});
}

/// @nodoc
class _$OnSendCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $OnSendCopyWith<$Res> {
  _$OnSendCopyWithImpl(OnSend _value, $Res Function(OnSend) _then)
      : super(_value, (v) => _then(v as OnSend));

  @override
  OnSend get _value => super._value as OnSend;

  @override
  $Res call({
    Object? isSend = freezed,
  }) {
    return _then(OnSend(
      isSend: isSend == freezed
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnSend implements OnSend {
  const _$OnSend({required this.isSend});

  @override
  final bool isSend;

  @override
  String toString() {
    return 'MessageEvent.onSend(isSend: $isSend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnSend &&
            const DeepCollectionEquality().equals(other.isSend, isSend));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isSend));

  @JsonKey(ignore: true)
  @override
  $OnSendCopyWith<OnSend> get copyWith =>
      _$OnSendCopyWithImpl<OnSend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return onSend(isSend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return onSend?.call(isSend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (onSend != null) {
      return onSend(isSend);
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (onSend != null) {
      return onSend(this);
    }
    return orElse();
  }
}

abstract class OnSend implements MessageEvent {
  const factory OnSend({required bool isSend}) = _$OnSend;

  bool get isSend;
  @JsonKey(ignore: true)
  $OnSendCopyWith<OnSend> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnSeenCopyWith<$Res> {
  factory $OnSeenCopyWith(OnSeen value, $Res Function(OnSeen) then) =
      _$OnSeenCopyWithImpl<$Res>;
  $Res call({String id});
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
    Object? id = freezed,
  }) {
    return _then(OnSeen(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSeen implements OnSeen {
  const _$OnSeen({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'MessageEvent.onSeen(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnSeen &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $OnSeenCopyWith<OnSeen> get copyWith =>
      _$OnSeenCopyWithImpl<OnSeen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return onSeen(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return onSeen?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (onSeen != null) {
      return onSeen(id);
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (onSeen != null) {
      return onSeen(this);
    }
    return orElse();
  }
}

abstract class OnSeen implements MessageEvent {
  const factory OnSeen({required String id}) = _$OnSeen;

  String get id;
  @JsonKey(ignore: true)
  $OnSeenCopyWith<OnSeen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadChatRoomMessagesCopyWith<$Res> {
  factory $LoadChatRoomMessagesCopyWith(LoadChatRoomMessages value,
          $Res Function(LoadChatRoomMessages) then) =
      _$LoadChatRoomMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadChatRoomMessagesCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $LoadChatRoomMessagesCopyWith<$Res> {
  _$LoadChatRoomMessagesCopyWithImpl(
      LoadChatRoomMessages _value, $Res Function(LoadChatRoomMessages) _then)
      : super(_value, (v) => _then(v as LoadChatRoomMessages));

  @override
  LoadChatRoomMessages get _value => super._value as LoadChatRoomMessages;
}

/// @nodoc

class _$LoadChatRoomMessages implements LoadChatRoomMessages {
  const _$LoadChatRoomMessages();

  @override
  String toString() {
    return 'MessageEvent.loadChatRoomMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadChatRoomMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return loadChatRoomMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return loadChatRoomMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (loadChatRoomMessages != null) {
      return loadChatRoomMessages();
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return loadChatRoomMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return loadChatRoomMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (loadChatRoomMessages != null) {
      return loadChatRoomMessages(this);
    }
    return orElse();
  }
}

abstract class LoadChatRoomMessages implements MessageEvent {
  const factory LoadChatRoomMessages() = _$LoadChatRoomMessages;
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
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return addMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return addMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return removeMessage(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return removeMessage?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
abstract class $UpdateChatRoomMessagesCopyWith<$Res> {
  factory $UpdateChatRoomMessagesCopyWith(UpdateChatRoomMessages value,
          $Res Function(UpdateChatRoomMessages) then) =
      _$UpdateChatRoomMessagesCopyWithImpl<$Res>;
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class _$UpdateChatRoomMessagesCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $UpdateChatRoomMessagesCopyWith<$Res> {
  _$UpdateChatRoomMessagesCopyWithImpl(UpdateChatRoomMessages _value,
      $Res Function(UpdateChatRoomMessages) _then)
      : super(_value, (v) => _then(v as UpdateChatRoomMessages));

  @override
  UpdateChatRoomMessages get _value => super._value as UpdateChatRoomMessages;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(UpdateChatRoomMessages(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$UpdateChatRoomMessages implements UpdateChatRoomMessages {
  const _$UpdateChatRoomMessages({required this.messages});

  @override
  final List<MessageModel> messages;

  @override
  String toString() {
    return 'MessageEvent.updateChatRoomMessages(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateChatRoomMessages &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  $UpdateChatRoomMessagesCopyWith<UpdateChatRoomMessages> get copyWith =>
      _$UpdateChatRoomMessagesCopyWithImpl<UpdateChatRoomMessages>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return updateChatRoomMessages(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return updateChatRoomMessages?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (updateChatRoomMessages != null) {
      return updateChatRoomMessages(messages);
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return updateChatRoomMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return updateChatRoomMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (updateChatRoomMessages != null) {
      return updateChatRoomMessages(this);
    }
    return orElse();
  }
}

abstract class UpdateChatRoomMessages implements MessageEvent {
  const factory UpdateChatRoomMessages({required List<MessageModel> messages}) =
      _$UpdateChatRoomMessages;

  List<MessageModel> get messages;
  @JsonKey(ignore: true)
  $UpdateChatRoomMessagesCopyWith<UpdateChatRoomMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMessageCopyWith<$Res> {
  factory $UpdateMessageCopyWith(
          UpdateMessage value, $Res Function(UpdateMessage) then) =
      _$UpdateMessageCopyWithImpl<$Res>;
  $Res call({MessageModel message});

  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class _$UpdateMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $UpdateMessageCopyWith<$Res> {
  _$UpdateMessageCopyWithImpl(
      UpdateMessage _value, $Res Function(UpdateMessage) _then)
      : super(_value, (v) => _then(v as UpdateMessage));

  @override
  UpdateMessage get _value => super._value as UpdateMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UpdateMessage(
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

class _$UpdateMessage implements UpdateMessage {
  const _$UpdateMessage({required this.message});

  @override
  final MessageModel message;

  @override
  String toString() {
    return 'MessageEvent.updateMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $UpdateMessageCopyWith<UpdateMessage> get copyWith =>
      _$UpdateMessageCopyWithImpl<UpdateMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return updateMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return updateMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return updateMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return updateMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (updateMessage != null) {
      return updateMessage(this);
    }
    return orElse();
  }
}

abstract class UpdateMessage implements MessageEvent {
  const factory UpdateMessage({required MessageModel message}) =
      _$UpdateMessage;

  MessageModel get message;
  @JsonKey(ignore: true)
  $UpdateMessageCopyWith<UpdateMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyMessageCopyWith<$Res> {
  factory $ReplyMessageCopyWith(
          ReplyMessage value, $Res Function(ReplyMessage) then) =
      _$ReplyMessageCopyWithImpl<$Res>;
  $Res call({MessageModel message});

  $MessageModelCopyWith<$Res> get message;
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
    Object? message = freezed,
  }) {
    return _then(ReplyMessage(
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

class _$ReplyMessage implements ReplyMessage {
  const _$ReplyMessage({required this.message});

  @override
  final MessageModel message;

  @override
  String toString() {
    return 'MessageEvent.replyMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReplyMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

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
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return replyMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return replyMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (replyMessage != null) {
      return replyMessage(message);
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (replyMessage != null) {
      return replyMessage(this);
    }
    return orElse();
  }
}

abstract class ReplyMessage implements MessageEvent {
  const factory ReplyMessage({required MessageModel message}) = _$ReplyMessage;

  MessageModel get message;
  @JsonKey(ignore: true)
  $ReplyMessageCopyWith<ReplyMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForwardMessageCopyWith<$Res> {
  factory $ForwardMessageCopyWith(
          ForwardMessage value, $Res Function(ForwardMessage) then) =
      _$ForwardMessageCopyWithImpl<$Res>;
  $Res call({MessageModel message, String chatId});

  $MessageModelCopyWith<$Res> get message;
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
    Object? message = freezed,
    Object? chatId = freezed,
  }) {
    return _then(ForwardMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$ForwardMessage implements ForwardMessage {
  const _$ForwardMessage({required this.message, required this.chatId});

  @override
  final MessageModel message;
  @override
  final String chatId;

  @override
  String toString() {
    return 'MessageEvent.forwardMessage(message: $message, chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForwardMessage &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.chatId, chatId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
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
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return forwardMessage(message, chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return forwardMessage?.call(message, chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (forwardMessage != null) {
      return forwardMessage(message, chatId);
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
      {required MessageModel message,
      required String chatId}) = _$ForwardMessage;

  MessageModel get message;
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
  $Res call({MessageModel message});

  $MessageModelCopyWith<$Res> get message;
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
    Object? message = freezed,
  }) {
    return _then(EditMessage(
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

class _$EditMessage implements EditMessage {
  const _$EditMessage({required this.message});

  @override
  final MessageModel message;

  @override
  String toString() {
    return 'MessageEvent.editMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

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
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return editMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return editMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
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
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(this);
    }
    return orElse();
  }
}

abstract class EditMessage implements MessageEvent {
  const factory EditMessage({required MessageModel message}) = _$EditMessage;

  MessageModel get message;
  @JsonKey(ignore: true)
  $EditMessageCopyWith<EditMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearMessageCopyWith<$Res> {
  factory $ClearMessageCopyWith(
          ClearMessage value, $Res Function(ClearMessage) then) =
      _$ClearMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $ClearMessageCopyWith<$Res> {
  _$ClearMessageCopyWithImpl(
      ClearMessage _value, $Res Function(ClearMessage) _then)
      : super(_value, (v) => _then(v as ClearMessage));

  @override
  ClearMessage get _value => super._value as ClearMessage;
}

/// @nodoc

class _$ClearMessage implements ClearMessage {
  const _$ClearMessage();

  @override
  String toString() {
    return 'MessageEvent.clearMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return clearMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return clearMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return clearMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return clearMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (clearMessage != null) {
      return clearMessage(this);
    }
    return orElse();
  }
}

abstract class ClearMessage implements MessageEvent {
  const factory ClearMessage() = _$ClearMessage;
}

/// @nodoc
abstract class $CancelEditCopyWith<$Res> {
  factory $CancelEditCopyWith(
          CancelEdit value, $Res Function(CancelEdit) then) =
      _$CancelEditCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelEditCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $CancelEditCopyWith<$Res> {
  _$CancelEditCopyWithImpl(CancelEdit _value, $Res Function(CancelEdit) _then)
      : super(_value, (v) => _then(v as CancelEdit));

  @override
  CancelEdit get _value => super._value as CancelEdit;
}

/// @nodoc

class _$CancelEdit implements CancelEdit {
  const _$CancelEdit();

  @override
  String toString() {
    return 'MessageEvent.cancelEdit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CancelEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return cancelEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return cancelEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return cancelEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return cancelEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (cancelEdit != null) {
      return cancelEdit(this);
    }
    return orElse();
  }
}

abstract class CancelEdit implements MessageEvent {
  const factory CancelEdit() = _$CancelEdit;
}

/// @nodoc
abstract class $CancelReplyCopyWith<$Res> {
  factory $CancelReplyCopyWith(
          CancelReply value, $Res Function(CancelReply) then) =
      _$CancelReplyCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelReplyCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $CancelReplyCopyWith<$Res> {
  _$CancelReplyCopyWithImpl(
      CancelReply _value, $Res Function(CancelReply) _then)
      : super(_value, (v) => _then(v as CancelReply));

  @override
  CancelReply get _value => super._value as CancelReply;
}

/// @nodoc

class _$CancelReply implements CancelReply {
  const _$CancelReply();

  @override
  String toString() {
    return 'MessageEvent.cancelReply()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CancelReply);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return cancelReply();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return cancelReply?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return cancelReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return cancelReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (cancelReply != null) {
      return cancelReply(this);
    }
    return orElse();
  }
}

abstract class CancelReply implements MessageEvent {
  const factory CancelReply() = _$CancelReply;
}

/// @nodoc
abstract class $CancelForwardCopyWith<$Res> {
  factory $CancelForwardCopyWith(
          CancelForward value, $Res Function(CancelForward) then) =
      _$CancelForwardCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelForwardCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $CancelForwardCopyWith<$Res> {
  _$CancelForwardCopyWithImpl(
      CancelForward _value, $Res Function(CancelForward) _then)
      : super(_value, (v) => _then(v as CancelForward));

  @override
  CancelForward get _value => super._value as CancelForward;
}

/// @nodoc

class _$CancelForward implements CancelForward {
  const _$CancelForward();

  @override
  String toString() {
    return 'MessageEvent.cancelForward()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CancelForward);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return cancelForward();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return cancelForward?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
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
    required TResult Function(WriteMessage value) writeMessage,
    required TResult Function(OpenChat value) openChat,
    required TResult Function(SendMessage value) sendMessage,
    required TResult Function(OnSend value) onSend,
    required TResult Function(OnSeen value) onSeen,
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return cancelForward(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return cancelForward?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (cancelForward != null) {
      return cancelForward(this);
    }
    return orElse();
  }
}

abstract class CancelForward implements MessageEvent {
  const factory CancelForward() = _$CancelForward;
}

/// @nodoc
abstract class $UpdateChatStateCopyWith<$Res> {
  factory $UpdateChatStateCopyWith(
          UpdateChatState value, $Res Function(UpdateChatState) then) =
      _$UpdateChatStateCopyWithImpl<$Res>;
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$UpdateChatStateCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $UpdateChatStateCopyWith<$Res> {
  _$UpdateChatStateCopyWithImpl(
      UpdateChatState _value, $Res Function(UpdateChatState) _then)
      : super(_value, (v) => _then(v as UpdateChatState));

  @override
  UpdateChatState get _value => super._value as UpdateChatState;

  @override
  $Res call({
    Object? chat = freezed,
  }) {
    return _then(UpdateChatState(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$UpdateChatState implements UpdateChatState {
  const _$UpdateChatState({required this.chat});

  @override
  final Chat chat;

  @override
  String toString() {
    return 'MessageEvent.updateChatState(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateChatState &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  $UpdateChatStateCopyWith<UpdateChatState> get copyWith =>
      _$UpdateChatStateCopyWithImpl<UpdateChatState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return updateChatState(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return updateChatState?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (updateChatState != null) {
      return updateChatState(chat);
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return updateChatState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return updateChatState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (updateChatState != null) {
      return updateChatState(this);
    }
    return orElse();
  }
}

abstract class UpdateChatState implements MessageEvent {
  const factory UpdateChatState({required Chat chat}) = _$UpdateChatState;

  Chat get chat;
  @JsonKey(ignore: true)
  $UpdateChatStateCopyWith<UpdateChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateChatCopyWith<$Res> {
  factory $UpdateChatCopyWith(
          UpdateChat value, $Res Function(UpdateChat) then) =
      _$UpdateChatCopyWithImpl<$Res>;
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$UpdateChatCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $UpdateChatCopyWith<$Res> {
  _$UpdateChatCopyWithImpl(UpdateChat _value, $Res Function(UpdateChat) _then)
      : super(_value, (v) => _then(v as UpdateChat));

  @override
  UpdateChat get _value => super._value as UpdateChat;

  @override
  $Res call({
    Object? chat = freezed,
  }) {
    return _then(UpdateChat(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$UpdateChat implements UpdateChat {
  const _$UpdateChat({required this.chat});

  @override
  final Chat chat;

  @override
  String toString() {
    return 'MessageEvent.updateChat(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateChat &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  $UpdateChatCopyWith<UpdateChat> get copyWith =>
      _$UpdateChatCopyWithImpl<UpdateChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return updateChat(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return updateChat?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (updateChat != null) {
      return updateChat(chat);
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return updateChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return updateChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (updateChat != null) {
      return updateChat(this);
    }
    return orElse();
  }
}

abstract class UpdateChat implements MessageEvent {
  const factory UpdateChat({required Chat chat}) = _$UpdateChat;

  Chat get chat;
  @JsonKey(ignore: true)
  $UpdateChatCopyWith<UpdateChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendGifCopyWith<$Res> {
  factory $SendGifCopyWith(SendGif value, $Res Function(SendGif) then) =
      _$SendGifCopyWithImpl<$Res>;
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$SendGifCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $SendGifCopyWith<$Res> {
  _$SendGifCopyWithImpl(SendGif _value, $Res Function(SendGif) _then)
      : super(_value, (v) => _then(v as SendGif));

  @override
  SendGif get _value => super._value as SendGif;

  @override
  $Res call({
    Object? chat = freezed,
  }) {
    return _then(SendGif(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$SendGif implements SendGif {
  const _$SendGif({required this.chat});

  @override
  final Chat chat;

  @override
  String toString() {
    return 'MessageEvent.sendGif(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendGif &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  $SendGifCopyWith<SendGif> get copyWith =>
      _$SendGifCopyWithImpl<SendGif>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return sendGif(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return sendGif?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (sendGif != null) {
      return sendGif(chat);
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return sendGif(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return sendGif?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (sendGif != null) {
      return sendGif(this);
    }
    return orElse();
  }
}

abstract class SendGif implements MessageEvent {
  const factory SendGif({required Chat chat}) = _$SendGif;

  Chat get chat;
  @JsonKey(ignore: true)
  $SendGifCopyWith<SendGif> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloseChatCopyWith<$Res> {
  factory $CloseChatCopyWith(CloseChat value, $Res Function(CloseChat) then) =
      _$CloseChatCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseChatCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $CloseChatCopyWith<$Res> {
  _$CloseChatCopyWithImpl(CloseChat _value, $Res Function(CloseChat) _then)
      : super(_value, (v) => _then(v as CloseChat));

  @override
  CloseChat get _value => super._value as CloseChat;
}

/// @nodoc

class _$CloseChat implements CloseChat {
  const _$CloseChat();

  @override
  String toString() {
    return 'MessageEvent.closeChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) writeMessage,
    required TResult Function(String chatId, String sender, String receiver)
        openChat,
    required TResult Function(Chat chat) sendMessage,
    required TResult Function(bool isSend) onSend,
    required TResult Function(String id) onSeen,
    required TResult Function() loadChatRoomMessages,
    required TResult Function(MessageModel message) addMessage,
    required TResult Function(String messageId) removeMessage,
    required TResult Function(List<MessageModel> messages)
        updateChatRoomMessages,
    required TResult Function(MessageModel message) updateMessage,
    required TResult Function(MessageModel message) replyMessage,
    required TResult Function(MessageModel message, String chatId)
        forwardMessage,
    required TResult Function(MessageModel message) editMessage,
    required TResult Function() clearMessage,
    required TResult Function() cancelEdit,
    required TResult Function() cancelReply,
    required TResult Function() cancelForward,
    required TResult Function(Chat chat) updateChatState,
    required TResult Function(Chat chat) updateChat,
    required TResult Function(Chat chat) sendGif,
    required TResult Function() closeChat,
  }) {
    return closeChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
  }) {
    return closeChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? writeMessage,
    TResult Function(String chatId, String sender, String receiver)? openChat,
    TResult Function(Chat chat)? sendMessage,
    TResult Function(bool isSend)? onSend,
    TResult Function(String id)? onSeen,
    TResult Function()? loadChatRoomMessages,
    TResult Function(MessageModel message)? addMessage,
    TResult Function(String messageId)? removeMessage,
    TResult Function(List<MessageModel> messages)? updateChatRoomMessages,
    TResult Function(MessageModel message)? updateMessage,
    TResult Function(MessageModel message)? replyMessage,
    TResult Function(MessageModel message, String chatId)? forwardMessage,
    TResult Function(MessageModel message)? editMessage,
    TResult Function()? clearMessage,
    TResult Function()? cancelEdit,
    TResult Function()? cancelReply,
    TResult Function()? cancelForward,
    TResult Function(Chat chat)? updateChatState,
    TResult Function(Chat chat)? updateChat,
    TResult Function(Chat chat)? sendGif,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (closeChat != null) {
      return closeChat();
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
    required TResult Function(LoadChatRoomMessages value) loadChatRoomMessages,
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
    required TResult Function(UpdateChatRoomMessages value)
        updateChatRoomMessages,
    required TResult Function(UpdateMessage value) updateMessage,
    required TResult Function(ReplyMessage value) replyMessage,
    required TResult Function(ForwardMessage value) forwardMessage,
    required TResult Function(EditMessage value) editMessage,
    required TResult Function(ClearMessage value) clearMessage,
    required TResult Function(CancelEdit value) cancelEdit,
    required TResult Function(CancelReply value) cancelReply,
    required TResult Function(CancelForward value) cancelForward,
    required TResult Function(UpdateChatState value) updateChatState,
    required TResult Function(UpdateChat value) updateChat,
    required TResult Function(SendGif value) sendGif,
    required TResult Function(CloseChat value) closeChat,
  }) {
    return closeChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
  }) {
    return closeChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WriteMessage value)? writeMessage,
    TResult Function(OpenChat value)? openChat,
    TResult Function(SendMessage value)? sendMessage,
    TResult Function(OnSend value)? onSend,
    TResult Function(OnSeen value)? onSeen,
    TResult Function(LoadChatRoomMessages value)? loadChatRoomMessages,
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    TResult Function(UpdateChatRoomMessages value)? updateChatRoomMessages,
    TResult Function(UpdateMessage value)? updateMessage,
    TResult Function(ReplyMessage value)? replyMessage,
    TResult Function(ForwardMessage value)? forwardMessage,
    TResult Function(EditMessage value)? editMessage,
    TResult Function(ClearMessage value)? clearMessage,
    TResult Function(CancelEdit value)? cancelEdit,
    TResult Function(CancelReply value)? cancelReply,
    TResult Function(CancelForward value)? cancelForward,
    TResult Function(UpdateChatState value)? updateChatState,
    TResult Function(UpdateChat value)? updateChat,
    TResult Function(SendGif value)? sendGif,
    TResult Function(CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (closeChat != null) {
      return closeChat(this);
    }
    return orElse();
  }
}

abstract class CloseChat implements MessageEvent {
  const factory CloseChat() = _$CloseChat;
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
      required List<MessageModel> messages,
      required bool isEdit,
      required bool isReply,
      required bool isForward,
      required Chat chat,
      required bool loadingMessages}) {
    return _MessageState(
      chatId: chatId,
      message: message,
      messages: messages,
      isEdit: isEdit,
      isReply: isReply,
      isForward: isForward,
      chat: chat,
      loadingMessages: loadingMessages,
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
  bool get isEdit => throw _privateConstructorUsedError;
  bool get isReply => throw _privateConstructorUsedError;
  bool get isForward => throw _privateConstructorUsedError;
  Chat get chat => throw _privateConstructorUsedError;
  bool get loadingMessages => throw _privateConstructorUsedError;

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
  $Res call(
      {String chatId,
      MessageModel message,
      List<MessageModel> messages,
      bool isEdit,
      bool isReply,
      bool isForward,
      Chat chat,
      bool loadingMessages});

  $MessageModelCopyWith<$Res> get message;
  $ChatCopyWith<$Res> get chat;
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
    Object? isEdit = freezed,
    Object? isReply = freezed,
    Object? isForward = freezed,
    Object? chat = freezed,
    Object? loadingMessages = freezed,
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
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      loadingMessages: loadingMessages == freezed
          ? _value.loadingMessages
          : loadingMessages // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$MessageStateCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$MessageStateCopyWith(
          _MessageState value, $Res Function(_MessageState) then) =
      __$MessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String chatId,
      MessageModel message,
      List<MessageModel> messages,
      bool isEdit,
      bool isReply,
      bool isForward,
      Chat chat,
      bool loadingMessages});

  @override
  $MessageModelCopyWith<$Res> get message;
  @override
  $ChatCopyWith<$Res> get chat;
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
    Object? isEdit = freezed,
    Object? isReply = freezed,
    Object? isForward = freezed,
    Object? chat = freezed,
    Object? loadingMessages = freezed,
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
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      loadingMessages: loadingMessages == freezed
          ? _value.loadingMessages
          : loadingMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageState implements _MessageState {
  const _$_MessageState(
      {required this.chatId,
      required this.message,
      required this.messages,
      required this.isEdit,
      required this.isReply,
      required this.isForward,
      required this.chat,
      required this.loadingMessages});

  factory _$_MessageState.fromJson(Map<String, dynamic> json) =>
      _$$_MessageStateFromJson(json);

  @override
  final String chatId;
  @override
  final MessageModel message;
  @override
  final List<MessageModel> messages;
  @override
  final bool isEdit;
  @override
  final bool isReply;
  @override
  final bool isForward;
  @override
  final Chat chat;
  @override
  final bool loadingMessages;

  @override
  String toString() {
    return 'MessageState(chatId: $chatId, message: $message, messages: $messages, isEdit: $isEdit, isReply: $isReply, isForward: $isForward, chat: $chat, loadingMessages: $loadingMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageState &&
            const DeepCollectionEquality().equals(other.chatId, chatId) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.isEdit, isEdit) &&
            const DeepCollectionEquality().equals(other.isReply, isReply) &&
            const DeepCollectionEquality().equals(other.isForward, isForward) &&
            const DeepCollectionEquality().equals(other.chat, chat) &&
            const DeepCollectionEquality()
                .equals(other.loadingMessages, loadingMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatId),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(isEdit),
      const DeepCollectionEquality().hash(isReply),
      const DeepCollectionEquality().hash(isForward),
      const DeepCollectionEquality().hash(chat),
      const DeepCollectionEquality().hash(loadingMessages));

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
      required List<MessageModel> messages,
      required bool isEdit,
      required bool isReply,
      required bool isForward,
      required Chat chat,
      required bool loadingMessages}) = _$_MessageState;

  factory _MessageState.fromJson(Map<String, dynamic> json) =
      _$_MessageState.fromJson;

  @override
  String get chatId;
  @override
  MessageModel get message;
  @override
  List<MessageModel> get messages;
  @override
  bool get isEdit;
  @override
  bool get isReply;
  @override
  bool get isForward;
  @override
  Chat get chat;
  @override
  bool get loadingMessages;
  @override
  @JsonKey(ignore: true)
  _$MessageStateCopyWith<_MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
