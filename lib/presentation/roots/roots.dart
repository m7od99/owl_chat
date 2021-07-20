import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/pages/chats/bottom_navigation_bar.dart';
import 'package:owl_chat/presentation/pages/login/login_screen.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import 'package:owl_chat/presentation/pages/signup/sign_up_screen.dart';
import 'package:owl_chat/presentation/pages/welcome/welcome_screen.dart';
import 'package:owl_chat/presentation/widgets/theme_sw.dart';

Map<String, WidgetBuilder> routes() {
  return {
    WelcomeScreen.id: (context) => WelcomeScreen(),
    LoginScreen.id: (context) => LoginScreen(),
    SignUpScreen.id: (context) => SignUpScreen(),
    ChatsScreen.id: (context) => ChatsScreen(),
    ChatScreen.id: (context) => ChatScreen(),
    SettingsScreen.id: (context) => SettingsScreen(),
    ThemePage.id: (context) => ThemePage(),
  };
}
