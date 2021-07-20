import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';
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
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ],
        child: MyApp(),
      ),
    ),
  );
}
