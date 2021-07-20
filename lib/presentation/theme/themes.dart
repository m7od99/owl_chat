import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

AppBarTheme appBarLightTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance!.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  ThemeData lightThemeData(BuildContext context) {
    return ThemeData.light().copyWith(
      backgroundColor: kBackgroundColor,
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarLightTheme(),
      iconTheme: IconThemeData(color: kContentColorLightTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: kContentColorLightTheme),
      colorScheme: ColorScheme.light(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
        unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
        selectedIconTheme: IconThemeData(color: kPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
  }

  ThemeData darkThemeData(BuildContext context) {
    return ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kContentColorLightTheme,
      appBarTheme: appBarTheme,
      iconTheme: IconThemeData(color: kContentColorDarkTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: kContentColorDarkTheme),
      colorScheme: ColorScheme.dark().copyWith(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kContentColorLightTheme,
        selectedItemColor: Colors.white70,
        unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
        selectedIconTheme: IconThemeData(color: kPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
  }
}
