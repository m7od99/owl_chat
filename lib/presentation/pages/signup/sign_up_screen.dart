import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/widgets/components.dart';
import 'package:owl_chat/presentation/widgets/large_button.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = 'SignUpScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.sign_up.tr(),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  LocaleKeys.register.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: inputDecoration(
                    hint: LocaleKeys.enter_your_email.tr(),
                    labelText: LocaleKeys.email.tr(),
                    icon: Icons.mail,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: true,
                  decoration: inputDecoration(
                    hint: LocaleKeys.enter_your_password.tr(),
                    labelText: LocaleKeys.password.tr(),
                    icon: Icons.lock,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: true,
                  decoration: inputDecoration(
                    hint: LocaleKeys.re_enter_your_password.tr(),
                    labelText: LocaleKeys.confirm_password.tr(),
                    icon: Icons.lock,
                  ),
                ),
                SizedBox(height: 40),
                LargeButton(title: LocaleKeys.register.tr(), onTap: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
