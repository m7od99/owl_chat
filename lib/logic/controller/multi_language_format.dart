// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:owl_chat/helper/helper.dart';

class AutoDirectionality extends StatelessWidget {
  const AutoDirectionality({
    Key? key,
    required this.child,
    required this.text,
  }) : super(key: key);

  final Widget child;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Helper.getDirection(text),
      child: child,
    );
  }

  TextDirection getDirection() {
    final direction = intl.BidiFormatter.UNKNOWN().estimateDirection(text);

    if (direction.value == 'RTL') {
      return TextDirection.rtl;
    } else {
      return TextDirection.ltr;
    }
  }
}
