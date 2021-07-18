import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  final double photoSize;
  final double fontSize;

  Logo({required this.fontSize, required this.photoSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: photoSize,
          child: Image(
            color: Colors.orange,
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Owl Chat',
          style: GoogleFonts.kaushanScript(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
            shadows: [
              Shadow(
                color: Colors.orangeAccent,
                offset: Offset(3, 4),
                blurRadius: 13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
