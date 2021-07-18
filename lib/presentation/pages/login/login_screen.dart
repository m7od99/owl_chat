import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';

import '../../widgets/components.dart';
import '../../widgets/large_button.dart';
import '../../widgets/logo.dart';
import '../chats/chats_screen.dart';
import '../signup/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(),
              Logo(
                fontSize: 30,
                photoSize: 100,
              ),
              Spacer(
                flex: 2,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: inputDecoration(
                  hint: LocaleKeys.enter_your_email.tr(),
                  labelText: LocaleKeys.email.tr(),
                  icon: Icons.mail,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: inputDecoration(
                  hint: LocaleKeys.enter_your_password.tr(),
                  labelText: LocaleKeys.password.tr(),
                  icon: Icons.lock,
                ),
              ),
              ForgotPassword(),
              Spacer(),
              LargeButton(
                title: LocaleKeys.login.tr(),
                onTap: () {
                  Navigator.pushNamed(context, ChatsScreen.id);
                },
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(LocaleKeys.dont_have_account.tr()),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.id);
                    },
                    child: Text(LocaleKeys.register.tr()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(1, 0),
      child: TextButton(
        child: Text(
          LocaleKeys.forgot_password.tr(),
          style: TextStyle(
            color: Colors.orange,
            decoration: TextDecoration.underline,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
