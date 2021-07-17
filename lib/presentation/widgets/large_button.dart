import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const LargeButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: Material(
        borderRadius: BorderRadius.circular(25),
        shadowColor: Colors.orangeAccent,
        elevation: 5,
        color: Colors.orange,
        child: TextButton(
          onPressed: onTap,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
