import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:owl_chat/presentation/widgets/language.dart';
import 'package:owl_chat/presentation/widgets/large_button.dart';
import 'package:owl_chat/presentation/widgets/profile_widget.dart';
=======
>>>>>>> parent of d5a373b ( adding settings screen and fix text field)

class SettingsScreen extends StatelessWidget {
  static const String id = "SettingsScreen";

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileWidget(),
            SizedBox(height: 50),
            Language(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              //todo sign out
              child: LargeButton(title: 'Sign out', onTap: () {}),
            ),
          ],
        ),
      ),
=======
    return Scaffold(
      appBar: AppBar(),
>>>>>>> parent of d5a373b ( adding settings screen and fix text field)
    );
  }
}
