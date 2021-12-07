// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/data/models/chats/chat.dart';
import 'package:owl_chat/presentation/pages/auth/login_screen.dart';
import 'package:owl_chat/presentation/pages/auth/sign_up_screen.dart';
import 'package:owl_chat/presentation/pages/auth/widgets/success_sign_up.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/pages/chats/chats_screen.dart';
import 'package:owl_chat/presentation/pages/chats/loading.dart';
import 'package:owl_chat/presentation/pages/settings/about_page.dart';
import 'package:owl_chat/presentation/pages/settings/change_photo.dart';
import 'package:owl_chat/presentation/pages/settings/language.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import 'package:owl_chat/presentation/pages/settings/theme_sw.dart';
import 'package:owl_chat/presentation/pages/settings/update_page.dart';

// ignore: avoid_classes_with_only_static_members
class Routes {
  static final home = GoRoute(
    path: '/',
    name: ChatsScreen.id,
    pageBuilder: (context, state) => MaterialPage(
      child: ChatsScreen(),
      key: state.pageKey,
    ),
    routes: [
      changePhoto,
      chat,
      settings,
      chats,
      theme,
      language,
      about,
    ],
  );

  static final login = GoRoute(
    path: '/login',
    name: LoginScreen.id,
    pageBuilder: (context, state) => MaterialPage(
      child: LoginScreen(),
      key: state.pageKey,
    ),
    routes: [
      signUp,
    ],
  );

  static final signUp = GoRoute(
    path: 'sign_up',
    name: SignUpScreen.id,
    pageBuilder: (context, state) => MaterialPage(
      child: SignUpScreen(),
      key: state.pageKey,
    ),
    routes: [
      successSignUp,
    ],
  );

  static final changePhoto = GoRoute(
    path: 'change_photo',
    name: ChangePhoto.id,
    pageBuilder: (context, state) => MaterialPage(
      child: const ChangePhoto(),
      key: state.pageKey,
    ),
  );

  static final settings = GoRoute(
    path: 'settings',
    name: SettingsScreen.id,
    pageBuilder: (context, state) => MaterialPage(
      child: SettingsScreen(),
      key: state.pageKey,
    ),
  );

  static final chat = GoRoute(
    path: 'chat/:id',
    name: ChatScreen.id,
    pageBuilder: (context, state) {
      return MaterialPage(
        child: const ChatScreen(),
        arguments: state.extra as Chat,
        key: state.pageKey,
      );
    },
  );

  static final chats = GoRoute(
    path: 'chats',
    name: Chats.id,
    pageBuilder: (context, state) => MaterialPage(
      child: const Chats(),
      key: state.pageKey,
    ),
    routes: [],
  );

  static final successSignUp = GoRoute(
    path: 'success',
    name: SuccessPage.id,
    pageBuilder: (context, state) {
      return MaterialPage(
        child: const SuccessPage(),
        key: state.pageKey,
      );
    },
  );
  static final theme = GoRoute(
    path: 'theme',
    name: ThemePage.id,
    pageBuilder: (context, state) {
      return MaterialPage(
        child: ThemePage(),
        key: state.pageKey,
      );
    },
  );
  static final language = GoRoute(
    path: 'language',
    name: LanguagePage.id,
    pageBuilder: (context, state) {
      return MaterialPage(
        child: const LanguagePage(),
        key: state.pageKey,
      );
    },
  );

  static final about = GoRoute(
    path: 'about',
    name: AboutPage.id,
    pageBuilder: (context, state) {
      return MaterialPage(
        child: const AboutPage(),
        key: state.pageKey,
      );
    },
    routes: [
      update,
    ],
  );

  static final update = GoRoute(
    path: 'update',
    name: UpdatePage.id,
    pageBuilder: (context, state) {
      return MaterialPage(
        child: const UpdatePage(),
        key: state.pageKey,
      );
    },
  );
}
