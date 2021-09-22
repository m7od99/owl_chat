import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/theme/error_list.dart';
import 'package:owl_chat/presentation/widgets/error_form.dart';
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
  final _formKey = GlobalKey<FormState>();

  List<String> errors = [];
  var _load = RoundedLoadingButtonController();

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void emailValidator(String value) {
    if (value.isNotEmpty) {
      removeError(error: kEmailNullError);
    } else if (emailValidatorRegExp.hasMatch(value)) {
      removeError(error: kInvalidEmailError);
    }
    return;
  }

  void emailNotValidator(String value) {
    if (value.isEmpty) {
      addError(error: kEmailNullError);
    } else if (!emailValidatorRegExp.hasMatch(value)) {
      addError(error: kInvalidEmailError);
    }
    return;
  }

  void passwordValidator(String value) {
    if (value.isNotEmpty) {
      removeError(error: kPassNullError);
    } else if (value.length >= 6) {
      removeError(error: kShortPassError);
    }
    return;
  }

  void passwordNotValid(String value) {
    if (value.isEmpty) {
      addError(error: kPassNullError);
    } else if (value.length < 6) {
      addError(error: kShortPassError);
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);
    String? email;
    String? password;

    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Logo(
                      fontSize: 40,
                      photoSize: 100,
                    ),
                    const SizedBox(height: 40),
                    //email
                    TextFormField(
                      onChanged: (value) {
                        emailValidator(value);
                        email = value;
                        return;
                      },
                      onSaved: (newValue) => email = newValue,
                      validator: (value) {
                        emailNotValidator(value!);
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: inputDecoration(
                        hint: LocaleKeys.enter_your_email.tr(),
                        labelText: LocaleKeys.email.tr(),
                        icon: Icons.mail,
                      ),
                    ),
                    const SizedBox(height: 20),

                    //password
                    TextFormField(
                      obscureText: true,
                      onChanged: (value) {
                        passwordValidator(value);
                        password = value;
                        print(password);
                      },
                      validator: (value) {
                        passwordNotValid(value!);
                      },
                      decoration: inputDecoration(
                        hint: LocaleKeys.enter_your_password.tr(),
                        labelText: LocaleKeys.password.tr(),
                        icon: Icons.lock,
                      ),
                    ),
                    const ForgotPassword(),
                    FormError(errors: errors),
                    const SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(LocaleKeys.dont_have_account.tr()),
                        const SizedBox(width: 5),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          child: Text(LocaleKeys.register.tr()),
                        ),
                      ],
                    ),
                    LargeButton(
                      title: LocaleKeys.login.tr(),
                      controller: _load,
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          try {
                            _load.start();
                            await user.login(email!, password!);
                            if (user.isLogin) {
                              _load.success();
                              Navigator.pushNamed(context, ChatsScreen.id);
                            } else {
                              _load.error();
                            }
                            _load.stop();
                            _load.reset();
                          } catch (e) {
                            _load.reset();
                            print(e);
                          }
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
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
          style: const TextStyle(
            color: Colors.orange,
            decoration: TextDecoration.underline,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
