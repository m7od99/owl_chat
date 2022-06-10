import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/navigation/router.dart';
import "package:provider/provider.dart";

import '../presentation/theme/themes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: themeProvider.lightThemeData(context),
      darkTheme: themeProvider.darkThemeData(context),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
