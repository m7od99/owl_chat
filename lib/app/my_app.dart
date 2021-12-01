import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen.dart';
import 'package:owl_chat/presentation/pages/chat/chat_screen_arg.dart';
import "package:provider/provider.dart";

import '../data/models/chats/chat.dart';
import '../presentation/pages/auth/login_screen.dart';
import '../presentation/pages/chats/loading.dart';
import '../presentation/theme/themes.dart';
import 'roots.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    RemoteMessage? message;
    FirebaseMessaging.onMessage.listen((remote) {
      message = remote;
    });
    AwesomeNotifications().actionStream.listen((notification) {
      notifications.setupInteractedMessage();
      notifications.handleMessage(message!);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final user = Provider.of<UserState>(context);

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      routes: routes(),
      onGenerateRoute: (settings) {
        if (settings.name == ChatScreen.id) {
          // ignore: cast_nullable_to_non_nullable
          final chat = settings.arguments as Chat;
          return MaterialPageRoute(
            builder: (context) {
              return ChatScreenArg(
                chat: chat,
              );
            },
          );
        }
      },
      themeMode: themeProvider.themeMode,
      theme: themeProvider.lightThemeData(context),
      darkTheme: themeProvider.darkThemeData(context),
      initialRoute: user.isLogin ? ChatsScreen.id : LoginScreen.id,
    );
  }

//todo: implement new router by go_router package
  // // ignore: unused_field
  // final _router = GoRouter(
  //   errorPageBuilder: (BuildContext context, GoRouterState state) {
  //     return MaterialPage(
  //       key: state.pageKey,
  //       child: Center(
  //         child: Text(state.error.toString()),
  //       ),
  //     );
  //   },
  //   routes: [
  //     GoRoute(
  //       path: '/chats',
  //       name: 'chats',
  //       pageBuilder: (context, state) => MaterialPage(
  //         key: state.pageKey,
  //         child: ChatsScreen(),
  //       ),
  //     ),
  //     GoRoute(
  //       path: '/login',
  //       pageBuilder: (context, state) => MaterialPage(
  //         key: state.pageKey,
  //         child: LoginScreen(),
  //       ),
  //     ),
  //   ],
  // );
}
