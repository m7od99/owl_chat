import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/pages/welcome/welcome_screen.dart';
import 'presentation/roots/roots.dart';
import 'presentation/theme/themes.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _initialized = false;

  bool _error = false;

  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    if (_error) {
      print('error');
    }

    if (!_initialized) {
      print('initialized');
    }

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      routes: routes(),
      themeMode: themeProvider.themeMode,
      theme: themeProvider.lightThemeData(context),
      darkTheme: themeProvider.darkThemeData(context),
      initialRoute: WelcomeScreen.id,
    );
  }
}
