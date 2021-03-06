// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/pages/auth/login_screen.dart';
import 'package:owl_chat/presentation/pages/auth/sign_up_screen.dart';
import 'package:owl_chat/presentation/pages/auth/widgets/success_sign_up.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/pages/chats/chats_screen.dart';
import 'package:owl_chat/presentation/pages/chats/loading.dart';
import 'package:owl_chat/presentation/pages/settings/about_page.dart';
import 'package:owl_chat/presentation/pages/settings/change_photo.dart';
import 'package:owl_chat/presentation/pages/settings/language.dart';
import 'package:owl_chat/presentation/pages/settings/notifications_page.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';
import 'package:owl_chat/presentation/pages/settings/theme_sw.dart';
import 'package:owl_chat/presentation/pages/settings/update_page.dart';

import '../presentation/pages/chat_detail/chat_detail.dart';

// ignore: avoid_classes_with_only_static_members
class Routes {
  static final home = GoRoute(
    path: '/',
    name: ChatsScreen.id,
    pageBuilder: (context, state) => MaterialPage(
      child: ChatsScreen(),
      key: state.pageKey,
    ),
    redirect: (state) {
      final isLogin = UserState().isLogin;

      final goingToLogin = state.location == Routes.login.path;

      if (!isLogin && !goingToLogin) return Routes.login.path;

      if (isLogin && goingToLogin) return Routes.home.path;

      return null;
    },
    routes: [
      changePhoto,
      chat,
      settings,
      chats,
      theme,
      language,
      about,
      notifications,
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
    redirect: (state) {
      return null;
    },
    pageBuilder: (context, state) {
      final bloc = state.extra as MessageBloc;
      return CustomTransitionPage(
        child: BlocProvider.value(
          value: bloc,
          key: Key(bloc.chat.id),
          child: ChatScreen(
            key: Key(bloc.chat.id),
          ),
        ),
        arguments: bloc,
        key: state.pageKey,
        // ignore: require_trailing_commas
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      );
    },
    routes: [
      chatDetailPage,
    ],
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

  static final notifications = GoRoute(
    path: 'notifications',
    name: NotificationsPage.id,
    pageBuilder: (context, state) => MaterialPage(
      child: const NotificationsPage(),
      key: state.pageKey,
    ),
  );

  static final chatDetailPage = GoRoute(
    path: 'chatDetailPage',
    name: ChatDetailPage.id,
    pageBuilder: (context, state) {
      final bloc = state.extra as MessageBloc;
      return MaterialPage(
        child: BlocProvider.value(
          value: bloc,
          child: ChatDetailPage(),
        ),
        key: state.pageKey,
      );
    },
  );
}
