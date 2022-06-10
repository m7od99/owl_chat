import 'package:flutter/material.dart';

class ChatsTheme extends ThemeExtension<ChatsTheme> {
  const ChatsTheme({
    required this.backgroundColor,
    required this.primaryColor,
    required this.textColor,
  });

  final Color backgroundColor;
  final Color primaryColor;
  final Color textColor;

  @override
  ThemeExtension<ChatsTheme> copyWith({
    Color? backgroundColor,
    Color? primaryColor,
    Color? textColor,
  }) =>
      ChatsTheme(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        primaryColor: primaryColor ?? this.primaryColor,
        textColor: textColor ?? this.textColor,
      );

  @override
  ThemeExtension<ChatsTheme> lerp(ThemeExtension<ChatsTheme>? other, double t) {
    if (other == this) {
      return this;
    }
    return this;
  }
}
