import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';

import '../pages/chats/loading.dart';
import '../pages/login/login_screen.dart';
import '../pages/settings/settings_screen.dart';
import '../pages/signup/sign_up_screen.dart';
import '../pages/welcome/welcome_screen.dart';
import '../widgets/change_photo.dart';
import '../widgets/search_for_users.dart';
import '../widgets/searching_by_name.dart';
import '../widgets/success_sign_up.dart';
import '../widgets/theme_sw.dart';

Map<String, WidgetBuilder> routes() {
  return {
    WelcomeScreen.id: (context) => WelcomeScreen(),
    LoginScreen.id: (context) => LoginScreen(),
    SignUpScreen.id: (context) => SignUpScreen(),
    ChatsScreen.id: (context) => ChatsScreen(),
    ChatScreen.id: (context) => const ChatScreen(),
    SettingsScreen.id: (context) => SettingsScreen(),
    ThemePage.id: (context) => ThemePage(),
    SuccessPage.id: (context) => const SuccessPage(),
    Search.id: (context) => const Search(),
    SearchByName.id: (context) => const SearchByName(),
    ChangePhoto.id: (context) => const ChangePhoto(),
  };
}
