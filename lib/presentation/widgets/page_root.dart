import 'package:flutter/material.dart';

class CustomPage<T> extends PageRoute<T> {
  // ignore: unused_field
  final WidgetBuilder _builder;

  CustomPage({required WidgetBuilder builder})
      : _builder = builder,
        super();

  @override
  // TODO: implement barrierColor
  Color? get barrierColor => throw UnimplementedError();

  @override
  // TODO: implement barrierLabel
  String? get barrierLabel => throw UnimplementedError();

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // TODO: implement buildPage
    throw UnimplementedError();
  }

  @override
  // TODO: implement maintainState
  bool get maintainState => throw UnimplementedError();

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => throw UnimplementedError();
}
