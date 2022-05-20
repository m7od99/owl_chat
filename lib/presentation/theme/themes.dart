import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

AppBarTheme appBaDarkTheme() {
  return const AppBarTheme(
    centerTitle: false,
    elevation: 0,
    backgroundColor: kDarkThemeSplashColor,
  );
}

AppBarTheme appBarLightTheme() {
  return const AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  );
}

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  // ignore: avoid_positional_boolean_parameters
  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  ThemeData lightThemeData(BuildContext context) {
    return ThemeData.light().copyWith(
      backgroundColor: kBackgroundColor,
      primaryColor: kPrimaryColor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarLightTheme(),
      iconTheme: const IconThemeData(color: kContentColorLightTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: kContentColorLightTheme),
      colorScheme: ColorScheme.fromSeed(
        seedColor: kPrimaryColor,
        brightness: Brightness.light,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
        unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: kPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
  }

  ThemeData darkThemeData(BuildContext context) {
    return ThemeData.dark().copyWith(
      //    useMaterial3: true,
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kContentColorLightTheme,
      appBarTheme: appBaDarkTheme(),
      iconTheme: const IconThemeData(color: kContentColorDarkTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: kContentColorDarkTheme),
      colorScheme:
          ColorScheme.fromSeed(seedColor: kPrimaryColor, brightness: Brightness.dark),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //   backgroundColor: kContentColorLightTheme,
      //   selectedItemColor: Colors.white70,
      //   unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
      //   selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      //   showUnselectedLabels: true,
      // ),
    );
  }
}
