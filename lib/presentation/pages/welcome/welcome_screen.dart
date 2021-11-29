import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../translations/locale_keys.g.dart';
import '../../widgets/large_button.dart';
import '../../widgets/logo.dart';
import '../auth/login_screen.dart';

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
              const Spacer(),
              const Center(
                child: Logo(fontSize: 50, photoSize: 140),
              ),
              const SizedBox(height: 30),
              const Spacer(),
              LargeButton(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                title: LocaleKeys.continue_.tr(),
                controller: _load,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
