import 'package:flutter/material.dart';

enum AppTheme { dark, light }

enum Language { ar, en }

enum BackgroundChatType { color, photo }

class AppSettings extends ChangeNotifier {
  bool allowNotifications = true;
  bool allowSoundNotifications = true;
  Color backgroundChatColor = Colors.black;
  String backgroundPhotoUrl = '';
  double chatFontSize = 18;
  Language language = Language.en;
  AppTheme theme = AppTheme.dark;

  void changeChatFontSize(double newSize) {
    chatFontSize = newSize;
    notifyListeners();
  }

  void changeLanguage(Language newLanguage) {
    language = newLanguage;
    notifyListeners();
  }

  void changeTheme(AppTheme newTheme) {
    theme = newTheme;
    notifyListeners();
  }

  void toggleNotifications() {
    allowNotifications = !allowNotifications;
    notifyListeners();
  }

  void toggleSoundNotifications() {
    allowSoundNotifications = !allowSoundNotifications;
    notifyListeners();
  }
}
