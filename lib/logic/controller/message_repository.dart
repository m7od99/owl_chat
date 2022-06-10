// ignore_for_file: avoid_print

import 'dart:async';

import 'package:owl_chat/data/models/app/data_contract.dart';
import 'package:owl_chat/data/models/app/source_type.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';

class MessageRepository extends MessageControlContract<MessageModel> {
  MessageRepository(this.sources);

  final List<MessageControlContract<MessageModel>> sources;

  bool isMatchedSource(MessageControlContract<MessageModel> source, RequestType type) {
    if (type == RequestType.any) return true;
    return source.type == SourceType.local
        ? type == RequestType.local
        : type == RequestType.remote;
  }

  @override
  Future addMessage(MessageModel message, String chatId) async {
    for (final source in sources.reversed) {
      await source.addMessage(message, chatId);
    }
  }

  @override
  Future deleteMessage(MessageModel message) {
    throw UnimplementedError();
  }

  @override
  Stream<List<MessageModel>> getMessages(
    String chatId, {
    RequestType type = RequestType.any,
  }) async* {
    final emptySources = <MessageControlContract<MessageModel>>[];

    late final Stream<List<MessageModel>> items;

    for (final source in sources) {
      if (!isMatchedSource(source, type)) {
        emptySources.add(source);
        continue;
      }

      items = source.getMessages(chatId);

      if (await items.isEmpty) {
        emptySources.add(source);
      } else {
        break;
      }
    }

    ///

    if (emptySources.isNotEmpty && await items.isEmpty == false) {
      for (final source in emptySources) {
        print(source.runtimeType);
        items.forEach((e) async {
          for (final message in e) {
            await source.addMessage(message, chatId);
          }
        });
      }
    }
    yield* items;
  }

  @override
  SourceType get type => SourceType.local;

  @override
  Future updateMessage(MessageModel message) async {
    for (final source in sources.reversed) {
      await source.updateMessage(message);
    }
  }
}
