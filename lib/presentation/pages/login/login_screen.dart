import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../logic/controller/validator.dart';
import '../../../logic/event_handler/user_state.dart';
import '../../../translations/locale_keys.g.dart';
import '../../widgets/components.dart';
import '../../widgets/error_form.dart';
import '../../widgets/forgot_password.dart';
import '../../widgets/large_button.dart';
import '../../widgets/logo.dart';
import '../chats/loading.dart';
import '../signup/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);
    final validator = Provider.of<Validator>(context);
    final _formKey = GlobalKey<FormState>();
    final _load = RoundedLoadingButtonController();

    String? email;
    String? password;

    Future onTapAction() async {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        try {
          _load.start();
          await user.login(email!, password!);
          if (user.isLogin) {
            _load.success();
            validator.clearErrors();
            // ignore: use_build_context_synchronously
            await Navigator.pushNamed(context, ChatsScreen.id);
          } else {
            _load.error();
          }
          _load.stop();
          _load.reset();
        } catch (e) {
          _load.reset();
          log(e.toString());
        }
      }
    }

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
                    const Logo(
                      fontSize: 40,
                      photoSize: 100,
                    ),
                    const SizedBox(height: 40),
                    //email
                    TextFormField(
                      onChanged: (value) {
                        validator.emailValidator(value);
                        email = value;
                      },
                      onSaved: (newValue) => email = newValue,
                      validator: (value) {
                        validator.emailNotValidator(value!);
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
                        validator.passwordValidator(value);
                        password = value;
                      },
                      validator: (value) {
                        validator.passwordNotValid(value!);
                      },
                      decoration: inputDecoration(
                        hint: LocaleKeys.enter_your_password.tr(),
                        labelText: LocaleKeys.password.tr(),
                        icon: Icons.lock,
                      ),
                    ),
                    const ForgotPassword(),
                    FormError(errors: validator.errors),
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
                        await onTapAction();
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
