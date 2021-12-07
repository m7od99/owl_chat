import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/navigation/router.dart';
import "package:provider/provider.dart";

import '../presentation/pages/chats/loading.dart';
import '../presentation/theme/themes.dart';

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
      if (message != null) {
        notifications.handleMessage(message!);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: themeProvider.lightThemeData(context),
      darkTheme: themeProvider.darkThemeData(context),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
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
