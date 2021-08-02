import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/presentation/widgets/components.dart';
import 'package:owl_chat/presentation/widgets/large_button.dart';
import 'package:owl_chat/presentation/widgets/success_sign_up.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = 'SignUpScreen';

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

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final userControl = UserControl();

  String? email;

  String? confirmPassword;

  String? password;

  String? userName;

  final _load = RoundedLoadingButtonController();

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
                TextFormField(
                  decoration: inputDecoration(
                    hint: LocaleKeys.user_name.tr(),
                    labelText: LocaleKeys.user_name.tr(),
                    icon: Icons.account_balance_outlined,
                  ),
                ),
                SizedBox(height: 30),
                emailTextField(),
                SizedBox(height: 30),
                passwordTextField(),
                SizedBox(height: 30),
                confirmPasswordTextField(),
                SizedBox(height: 40),
                LargeButton(
                  title: LocaleKeys.register.tr(),
                  onTap: () async {
                    if (email != null && password != null) {
                      await userControl.signUp(email!, password!, userName!);
                    }
                    if (userControl.isLogin) {
                      print(email);
                      Navigator.pushNamed(context, SuccessPage.id);
                    }
                  },
                  controller: _load,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField passwordTextField() {
    return TextFormField(
      obscureText: true,
      decoration: inputDecoration(
        hint: LocaleKeys.enter_your_password.tr(),
        labelText: LocaleKeys.password.tr(),
        icon: Icons.lock,
      ),
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
    );
  }

  TextFormField confirmPasswordTextField() {
    return TextFormField(
        obscureText: true,
        decoration: inputDecoration(
          hint: LocaleKeys.re_enter_your_password.tr(),
          labelText: LocaleKeys.confirm_password.tr(),
          icon: Icons.lock,
        ),
        onSaved: (newValue) => confirmPassword = newValue!,
        onChanged: (pass) {
          setState(() {
            confirmPassword = pass;
            print(pass);
          });
        });
  }

  TextFormField emailTextField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: inputDecoration(
          hint: LocaleKeys.enter_your_email.tr(),
          labelText: LocaleKeys.email.tr(),
          icon: Icons.mail,
        ),
        onSaved: (newValue) => email = newValue!,
        onChanged: (value) {
          setState(() {
            print(value);
            email = value;
          });
        });
  }
}
