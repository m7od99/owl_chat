import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/pages/chats/chats_screen.dart';

import '../presentation/pages/auth/login_screen.dart';
import '../presentation/pages/auth/sign_up_screen.dart';
import '../presentation/pages/auth/widgets/success_sign_up.dart';
import '../presentation/pages/chats/loading.dart';
import '../presentation/pages/settings/change_photo.dart';
import '../presentation/pages/settings/settings_screen.dart';
import '../presentation/pages/settings/theme_sw.dart';
import '../presentation/pages/welcome/welcome_screen.dart';

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
    ChangePhoto.id: (context) => const ChangePhoto(),
    Chats.id: (context) => const Chats(),
  };
}
