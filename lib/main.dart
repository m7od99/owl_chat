import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/settings/settings_screen.dart';

import 'presentation/pages/chat/chat_screen.dart';
import 'presentation/pages/chats/chats_screen.dart';
import 'presentation/pages/login/login_screen.dart';
import 'presentation/pages/signup/sign_up_screen.dart';
import 'presentation/pages/welcome/welcome_screen.dart';
import 'presentation/theme/themes.dart';
import 'translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      fallbackLocale: Locale('en'),
      path: 'assets/translations',
      assetLoader: CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _initialized = false;

  bool _error = false;

  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
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
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        ChatsScreen.id: (context) => ChatsScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
      },
      themeMode: ThemeMode.system,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      initialRoute: WelcomeScreen.id,
    );
  }
}
