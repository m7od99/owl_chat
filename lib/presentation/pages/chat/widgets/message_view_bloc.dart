import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:implicitly_animated_reorderable_list/transitions.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/message_bubble.dart';
import 'package:owl_chat/presentation/pages/chat/widgets/popup_card.dart';
import 'package:owl_chat/presentation/widgets/hero_root.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';

class MessageAnimatedList<T> extends StatelessWidget {
  const MessageAnimatedList({
    Key? key,
    required this.chat,
    required this.scrollController,
    required this.textEditingController,
  }) : super(key: key);

  final Chat chat;
  final ScrollController scrollController;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      buildWhen: (previous, current) {
        if (current.chatId == chat.id && current.messages.first.chatId == chat.id) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state.loadingMessages) {
          return const Center(child: CircularProgressIndicator());
        }
        return ImplicitlyAnimatedReorderableList<MessageModel>(
          onReorderFinished: (item, start, finish, items) {},
          areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
          reverse: true,
          items: state.messages,
          itemBuilder: (context, animation, item, index) {
            return Reorderable(
              key: ValueKey(item),
              builder: (context, dragAnimation, inDrag) {
                return MessageBubbleAnimated(
                  index: index,
                  message: state.messages[index],
                  animation: animation,
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      HeroDialogRoute(
                        builder: (context) => PopupCard(
                          message: state.messages[index],
                          tag: index,
                          textEditingController: textEditingController,
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}

class ListModel<E> {
  ListModel({
    required this.listKey,
    required this.removedItemBuilder,
    Iterable<E>? initialItems,
  }) : _items = List<E>.from(initialItems ?? <E>[]);

  final GlobalKey<AnimatedListState> listKey;
  final RemovedItemBuilder<E> removedItemBuilder;
  final List<E> _items;

  AnimatedListState? get _animatedList => listKey.currentState;

  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList!.insertItem(index);
  }

  E removeAt(int index) {
    final E removedItem = _items.removeAt(index);
    if (removedItem != null) {
      _animatedList!.removeItem(
        index,
        (BuildContext context, Animation<double> animation) {
          return removedItemBuilder(removedItem, context, animation);
        },
      );
    }
    return removedItem;
  }

  int get length => _items.length;

  E operator [](int index) => _items[index];

  int indexOf(E item) => _items.indexOf(item);
}

typedef RemovedItemBuilder<T> = Widget Function(
  T item,
  BuildContext context,
  Animation<double> animation,
);
