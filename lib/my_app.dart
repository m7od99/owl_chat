import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/chats/bottom_navigation_bar.dart';
import 'package:owl_chat/presentation/theme/themes.dart';
import 'package:provider/provider.dart';

import 'data/data_controller/user_control.dart';
import 'presentation/pages/login/login_screen.dart';
import 'presentation/roots/roots.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final user = Provider.of<UserControl>(context);

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      routes: routes(),
      themeMode: themeProvider.themeMode,
      theme: themeProvider.lightThemeData(context),
      darkTheme: themeProvider.darkThemeData(context),
      initialRoute: user.isLogin ? ChatsScreen.id : LoginScreen.id,
    );
  }
}
