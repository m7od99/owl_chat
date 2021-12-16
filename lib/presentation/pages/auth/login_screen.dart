// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/data/data_controller/user_control.dart';
import 'package:owl_chat/logic/bloc/auth/auth_bloc.dart';
import 'package:owl_chat/logic/bloc/user_bloc/user_bloc.dart' as user;
import 'package:owl_chat/navigation/router.dart';
import 'package:owl_chat/presentation/pages/auth/sign_up_screen.dart';

import '../../../translations/locale_keys.g.dart';
import '../../widgets/components.dart';
import '../../widgets/large_button.dart';
import '../../widgets/logo.dart';
import 'widgets/error_form.dart';
import 'widgets/forgot_password.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: inputDecoration(
                            hint: LocaleKeys.enter_your_email.tr(),
                            labelText: LocaleKeys.email.tr(),
                            icon: Icons.mail,
                          ),
                          onChanged: (value) {
                            context.read<AuthBloc>().add(UpdateEmail(email: value));
                          },
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 20),
                        //password
                        TextFormField(
                          onChanged: (value) {
                            context.read<AuthBloc>().add(UpdatePassword(value: value));
                          },
                          obscureText: true,
                          decoration: inputDecoration(
                            hint: LocaleKeys.enter_your_password.tr(),
                            labelText: LocaleKeys.password.tr(),
                            icon: Icons.lock,
                          ),
                        ),
                        const ForgotPassword(),
                        FormError(errors: state.errors),
                        FormError(errors: state.firebaseError),
                        const SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(LocaleKeys.dont_have_account.tr()),
                            const SizedBox(width: 5),
                            TextButton(
                              onPressed: () {
                                context.read<AuthBloc>().add(const TapToSignUpPage());
                                context.goNamed(SignUpScreen.id);
                              },
                              child: Text(LocaleKeys.register.tr()),
                            ),
                          ],
                        ),
                        LargeButton(
                          title: LocaleKeys.login.tr(),
                          controller: context.read<AuthBloc>().load,
                          onTap: () async {
                            try {
                              context.read<AuthBloc>().add(const LoginPress());
                              if (UserControl().isLogin) {
                                // context
                                //     .read<user.UserBloc>()
                                //     .add(const user.SaveUserInServerDatabase());

                                router.go('/');
                              }
                            } catch (e) {
                              log(e.toString());
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
      },
    );
  }
}
