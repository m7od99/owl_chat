import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'app/provider_control.dart';
import 'logic/controller/notifications.dart';
import 'translations/codegen_loader.g.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
      );

  final Directory appDocDir = await getApplicationDocumentsDirectory();

  final storage = await HydratedStorage.build(
    storageDirectory: appDocDir,
  );

  Hive.init(appDocDir.path);

  await Notifications().startNotifications();
  Notifications().setupInteractedMessage();

  HydratedBlocOverrides.runZoned(
    () => runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('ar'),
        ],
        fallbackLocale: const Locale('en'),
        path: 'assets/translations',
        assetLoader: const CodegenLoader(),
        child: const ProviderControl(),
      ),
    ),
    storage: storage,
  );
}
