import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'WelcomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Welcome to Owl Chat'),
            ],
          ),
        ),
      ),
    );
  }
}
