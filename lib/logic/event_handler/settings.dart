import 'package:flutter/material.dart';

enum Theme { dark, light }

enum Language { ar, en }

enum BackgroundChatType { color, photo }

class Settings extends ChangeNotifier {
  double chatFontSize = 16;
  Theme theme = Theme.dark;
  Language language = Language.en;
  bool allowNotifications = true;
  bool allowSoundNotifications = true;
  Color backgroundChatColor = Colors.black;
  String backgroundPhotoUrl = '';

  void changeChatFontSize(double newSize) {
    chatFontSize = newSize;
    notifyListeners();
  }

  void changeLanguage(Language newLanguage) {
    language = newLanguage;
    notifyListeners();
  }

  void changeTheme(Theme newTheme) {
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
