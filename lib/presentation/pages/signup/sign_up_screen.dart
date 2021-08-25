import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/presentation/theme/error_list.dart';
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
  final _formKey = GlobalKey<FormState>();
  final userControl = UserControl();
  var _load = RoundedLoadingButtonController();

  String? email;
  String? conformPassword;
  String? password;
  String? userName;

  List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  void emailValidator(value) {
    if (value.isNotEmpty) {
      removeError(error: kEmailNullError);
    } else if (emailValidatorRegExp.hasMatch(value)) {
      removeError(error: kInvalidEmailError);
    }
    return null;
  }

  void emailNotValidator(value) {
    if (value.isEmpty) {
      addError(error: kEmailNullError);
    } else if (!emailValidatorRegExp.hasMatch(value)) {
      addError(error: kInvalidEmailError);
    }
    return null;
  }

  void passwordValidator(value) {
    if (value.isNotEmpty) {
      removeError(error: kPassNullError);
    } else if (value.length >= 6) {
      removeError(error: kShortPassError);
    }
    return null;
  }

  void passwordNotValid(value) {
    if (value.isEmpty) {
      addError(error: kPassNullError);
    } else if (value.length < 6) {
      addError(error: kShortPassError);
    }
    return null;
  }

  void passwordConfirmValid(value) {
    if (value.isNotEmpty) {
      removeError(error: kPassNullError);
    } else if (value.isNotEmpty && password == conformPassword) {
      removeError(error: kMatchPassError);
    }
    conformPassword = value;
  }

  void passwordConfirmNotValid(value) {
    if (value.isEmpty) {
      addError(error: kPassNullError);
      return;
    } else if ((password != value)) {
      addError(error: kMatchPassError);
      return;
    }
    return null;
  }

  void userNameValid(value) {
    if (value.isNotEmpty) {
      removeError(error: "Enter your user name");
    } else if (value.length >= 3) {
      removeError(error: "Your user name is too short");
    }
  }

  void userNameNotValid(value) {
    if (value.isEmpty) {
      addError(error: "Enter your user name");
      return;
    } else if (value.length < 3) {
      addError(error: "Your user name is too short");
      return;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserState>(context);

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
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  userNameField(),
                  SizedBox(height: 30),
                  emailTextField(),
                  SizedBox(height: 30),
                  passwordTextField(),
                  SizedBox(height: 30),
                  confirmPasswordTextField(),
                  SizedBox(height: 20),
                  FormError(errors: errors),
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
                          if (userControl.isLogin) {
                            print(email);
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

  TextFormField userNameField() {
    return TextFormField(
      onChanged: (value) {
        userNameValid(value);
        userName = value;
      },
      validator: (value) {
        userNameNotValid(value);
      },
      onSaved: (newValue) => userName = newValue,
      decoration: inputDecoration(
        hint: LocaleKeys.user_name.tr(),
        labelText: LocaleKeys.user_name.tr(),
        icon: Icons.account_balance_outlined,
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
        passwordValidator(value);
        password = value;
      },
      validator: (value) {
        passwordNotValid(value);
      },
      onSaved: (newValue) => password = newValue,
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
      onSaved: (newValue) => conformPassword = newValue!,
      onChanged: (pass) {
        passwordConfirmValid(pass);
        conformPassword = pass;
        print(pass);
      },
      validator: (value) {
        passwordConfirmNotValid(value);
      },
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
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        emailValidator(value);
        print(value);
      },
      validator: (value) {
        emailNotValidator(value);
      },
    );
  }
}
