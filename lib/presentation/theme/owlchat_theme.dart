// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'theme_colors.dart' as k;

class OwlChatTheme {
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: k.backgroundColor,
    primaryColor: k.secondaryColor,
    backgroundColor: k.backgroundColor,
    highlightColor: k.highlightColor,
  );
}
