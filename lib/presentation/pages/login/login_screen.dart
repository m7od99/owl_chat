import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/theme/error_list.dart';
import 'package:owl_chat/presentation/widgets/error_form.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';

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
  late String email;
  late String password;
  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: _formKey,
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
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      removeError(error: kEmailNullError);
                    } else if (emailValidatorRegExp.hasMatch(value)) {
                      removeError(error: kInvalidEmailError);
                    }
                    return null;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      addError(error: kEmailNullError);
                      return "";
                    } else if (!emailValidatorRegExp.hasMatch(value)) {
                      addError(error: kInvalidEmailError);
                      return "";
                    }
                    return null;
                  },
                  decoration: inputDecoration(
                    hint: LocaleKeys.enter_your_email.tr(),
                    labelText: LocaleKeys.email.tr(),
                    icon: Icons.mail,
                  ),
                ),
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
                FormError(errors: errors),
                Spacer(),
                LargeButton(
                  title: LocaleKeys.login.tr(),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.pushNamed(context, ChatsScreen.id);
                    }
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
