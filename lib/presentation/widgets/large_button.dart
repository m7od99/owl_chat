import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LargeButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final RoundedLoadingButtonController controller;

  const LargeButton({required this.title, required this.onTap, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: RoundedLoadingButton(
        color: Colors.orange,
        elevation: 5,
        onPressed: onTap,
        controller: controller,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
