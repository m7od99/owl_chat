import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

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
  final _load = RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserControl>(context);
    String? email;
    String? password;

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

              //email
              TextFormField(
                onChanged: (value) {
                  email = value;
                  print(email);
                },
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

              //password
              TextFormField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                  print(password);
                },
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
                  controller: _load,
                  onTap: () async {
                    _load.start();
                    try {
                      await user.login(email!, password!);
                      if (user.isLogin) {
                        _load.success();
                        Navigator.pushNamed(context, ChatsScreen.id);
                      } else
                        _load.stop();
                      _load.reset();
                    } catch (e) {
                      _load.reset();
                      print(e);
                    }
                  }),
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

//todo forgot password page
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
