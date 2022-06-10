import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owl_chat/logic/bloc/auth/auth_bloc.dart';

import '../../../translations/locale_keys.g.dart';
import '../../widgets/components.dart';
import '../../widgets/large_button.dart';
import 'widgets/error_form.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Sign Up'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.read<AuthBloc>().add(const TapToSignUpPage());
                context.pop();
              },
            ),
          ),
          body: Form(
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
                          decoration: inputDecoration(
                            hint: LocaleKeys.user_name.tr(),
                            labelText: LocaleKeys.user_name.tr(),
                            icon: Icons.account_balance_outlined,
                          ),
                          textInputAction: TextInputAction.next,
                          onChanged: (value) {
                            context.read<AuthBloc>().add(UpdateUserName(value: value));
                          },
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration(
                            hint: LocaleKeys.enter_your_email.tr(),
                            labelText: LocaleKeys.email.tr(),
                            icon: Icons.mail,
                          ),
                          onChanged: (value) {
                            context.read<AuthBloc>().add(UpdateEmail(email: value));
                          },
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration(
                            hint: LocaleKeys.enter_your_password.tr(),
                            labelText: LocaleKeys.password.tr(),
                            icon: Icons.lock,
                          ),
                          onChanged: (value) {
                            context.read<AuthBloc>().add(UpdatePassword(value: value));
                          },
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          decoration: inputDecoration(
                            hint: LocaleKeys.re_enter_your_password.tr(),
                            labelText: LocaleKeys.confirm_password.tr(),
                            icon: Icons.lock,
                          ),
                          onChanged: (value) {
                            context
                                .read<AuthBloc>()
                                .add(UpdateConfirmPassword(value: value));
                          },
                        ),
                        const SizedBox(height: 20),
                        FormError(errors: state.errors),
                        const SizedBox(height: 40),
                        LargeButton(
                          title: LocaleKeys.register.tr(),
                          onTap: () async {
                            try {
                              context.read<AuthBloc>().add(const SignUpPress());
                            } catch (e) {
                              log(e.toString());
                            }
                            setState(() {});
                          },
                          controller: context.read<AuthBloc>().loadSign,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.08),
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
