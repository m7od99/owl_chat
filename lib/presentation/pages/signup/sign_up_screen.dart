import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/logic/controller/validator.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/widgets/components.dart';
import 'package:owl_chat/presentation/widgets/error_form.dart';
import 'package:owl_chat/presentation/widgets/large_button.dart';
import 'package:owl_chat/presentation/widgets/success_sign_up.dart';
import 'package:owl_chat/translations/locale_keys.g.dart';
import 'package:provider/provider.dart';
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
  final _load = RoundedLoadingButtonController();

  String? email;
  String? conformPassword;
  String? password;
  String? userName;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);
    final validator = Provider.of<Validator>(context);
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: SafeArea(
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
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  TextFormField(
                    onChanged: (value) {
                      validator.userNameValid(value);
                      userName = value;
                    },
                    validator: (value) {
                      validator.userNameNotValid(value!);
                    },
                    onSaved: (newValue) => userName = newValue,
                    decoration: inputDecoration(
                      hint: LocaleKeys.user_name.tr(),
                      labelText: LocaleKeys.user_name.tr(),
                      icon: Icons.account_balance_outlined,
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: inputDecoration(
                      hint: LocaleKeys.enter_your_email.tr(),
                      labelText: LocaleKeys.email.tr(),
                      icon: Icons.mail,
                    ),
                    onSaved: (newValue) => email = newValue,
                    onChanged: (value) {
                      validator.emailValidator(value);
                      print(value);
                    },
                    validator: (value) {
                      validator.emailNotValidator(value!);
                    },
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    obscureText: true,
                    decoration: inputDecoration(
                      hint: LocaleKeys.enter_your_password.tr(),
                      labelText: LocaleKeys.password.tr(),
                      icon: Icons.lock,
                    ),
                    onChanged: (value) {
                      validator.passwordValidator(value);
                      password = value;
                    },
                    validator: (value) {
                      validator.passwordNotValid(value!);
                    },
                    onSaved: (newValue) => password = newValue,
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    obscureText: true,
                    decoration: inputDecoration(
                      hint: LocaleKeys.re_enter_your_password.tr(),
                      labelText: LocaleKeys.confirm_password.tr(),
                      icon: Icons.lock,
                    ),
                    onSaved: (newValue) => conformPassword = newValue!,
                    onChanged: (pass) {
                      validator.passwordConfirmValid(password!, pass);
                      conformPassword = pass;
                      print(pass);
                    },
                    validator: (value) {
                      validator.passwordConfirmNotValid(value!, password!);
                    },
                  ),
                  SizedBox(height: 20),
                  FormError(errors: validator.errors),
                  SizedBox(height: 40),
                  LargeButton(
                    title: LocaleKeys.register.tr(),
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        try {
                          if (email != null && password != null) {
                            _load.start();
                            await user.signUp(email!, password!, userName!);
                          }
                          if (user.isLogin) {
                            print(email);
                            validator.clearErrors();
                            Navigator.pushNamed(context, SuccessPage.id);
                          }
                          _load.stop();
                          _load.reset();
                        } catch (e) {
                          _load.stop();
                          _load.reset();
                          print(e);
                        }
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
      ),
    );
  }
}
