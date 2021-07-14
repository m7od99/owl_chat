import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../chats/chats_screen.dart';
import '../signup/sign_up_screen.dart';
import '../../widgets/components.dart';
import '../../widgets/large_button.dart';
import '../../widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
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
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: inputDecoration(
                  hint: 'Enter your Email',
                  labelText: 'Email',
                  icon: Icons.mail,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: inputDecoration(
                  hint: 'Enter your Password',
                  labelText: 'Password',
                  icon: Icons.lock,
                ),
              ),
              ForgotPassword(),
              Spacer(),
              LargeButton(
                title: 'Log in',
                onTap: () {
                  Navigator.pushNamed(context, ChatsScreen.id);
                },
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.id);
                    },
                    child: Text('Register'),
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
          'Forgot Password',
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
