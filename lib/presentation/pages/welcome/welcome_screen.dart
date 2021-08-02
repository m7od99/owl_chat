import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/pages/login/login_screen.dart';
import 'package:owl_chat/presentation/widgets/large_button.dart';
import 'package:owl_chat/presentation/widgets/logo.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'WelcomeScreen';

  @override
  Widget build(BuildContext context) {
    final _load = RoundedLoadingButtonController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            children: [
              // Language(),
              Spacer(),
              Center(
                child: Logo(fontSize: 50, photoSize: 140),
              ),
              SizedBox(height: 30),
              // Text(
              //   'Welcome to OwlChat family',
              //   textAlign: TextAlign.center,
              //   style: GoogleFonts.andada(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              Spacer(),
              LargeButton(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                title: LocaleKeys.continue_.tr(),
                controller: _load,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
