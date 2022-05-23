import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:owl_chat/notifications/notification_controller.dart';
import 'package:path_provider/path_provider.dart';

import 'app/provider_control.dart';
import 'firebase_options.dart';
import 'translations/codegen_loader.g.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final notificationControl = NotificationController(AwesomeNotifications());

  await EasyLocalization.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await notificationControl.startNotification();
  await notificationControl.displayNotification();
  await notificationControl.closeSeenMessageNotifications();
  await notificationControl.mapActionNotification();

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  final Directory appDocDir = await getApplicationDocumentsDirectory();

  final storage = await HydratedStorage.build(
    storageDirectory: appDocDir,
  );

  Hive.init(appDocDir.path);

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
    //  blocObserver: SimpleBlocObserver(),
    storage: storage,
  );
}
