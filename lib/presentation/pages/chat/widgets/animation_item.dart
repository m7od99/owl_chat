import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

class AnimationItemBuilder extends StatelessWidget {
  const AnimationItemBuilder({
    Key? key,
    required this.index,
    required this.animation,
    required this.child,
  }) : super(key: key);

  final int index;
  final Animation<double> animation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: Offset.zero,
      ).animate(animation),
      // Paste you Widget
      child: child,
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

const options = LiveOptions(
  // Start animation after (default zero)
  delay: Duration(microseconds: 10),

  // Show each item through (default 250)
  showItemInterval: Duration(milliseconds: 100),

  // Animation duration (default 250)
  showItemDuration: Duration(microseconds: 100),

  // Animations starts at 0.05 visible
  // item fraction in sight (default 0.025)
  visibleFraction: 0.05,

  // Repeat the animation of the appearance
  // when scrolling in the opposite direction (default false)
  // To get the effect as in a showcase for ListView, set true
);
