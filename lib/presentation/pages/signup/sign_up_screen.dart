import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owl_chat/presentation/widgets/components.dart';
import 'package:owl_chat/presentation/widgets/large_button.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = 'SignUpScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign up',
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

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
                  'Register Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: inputDecoration(
                    hint: 'Enter your Email',
                    labelText: 'Email',
                    icon: Icons.mail,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: true,
                  decoration: inputDecoration(
                    hint: 'Enter your Password',
                    labelText: 'Password',
                    icon: Icons.lock,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: true,
                  decoration: inputDecoration(
                    hint: 'Re-enter your Password',
                    labelText: 'Confirm Password',
                    icon: Icons.lock,
                  ),
                ),
                SizedBox(height: 40),
                LargeButton(title: 'Register', onTap: () {}),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
