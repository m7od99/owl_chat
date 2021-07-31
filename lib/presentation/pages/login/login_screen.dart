import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/message_control.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';
import 'package:provider/provider.dart';

import '../../widgets/components.dart';
import '../../widgets/large_button.dart';
import '../../widgets/logo.dart';
import '../chats/bottom_navigation_bar.dart';
import '../signup/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);
    final control = Provider.of<MessageControl>(context);

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
              emailTextField(),
              SizedBox(
                height: 20,
              ),
              TextFormField(
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
                onTap: () async {
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

  TextFormField emailTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: inputDecoration(
        hint: LocaleKeys.enter_your_email.tr(),
        labelText: LocaleKeys.email.tr(),
        icon: Icons.mail,
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
