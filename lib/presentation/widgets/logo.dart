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
            //  color: Colors.orange[700],
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Owlers Night',
          style: GoogleFonts.margarine(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.orange[400],
            shadows: [
              Shadow(
                color: Colors.orangeAccent,
                offset: Offset(2, 5),
                blurRadius: 14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
