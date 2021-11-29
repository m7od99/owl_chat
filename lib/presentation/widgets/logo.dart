import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  final double photoSize;
  final double fontSize;

  const Logo({required this.fontSize, required this.photoSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: photoSize,
          child: Image(
            color: Colors.orange[700],
            image: const AssetImage('assets/images/logo.png'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Owls Night',
          style: GoogleFonts.margarine(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.orange[400],
            shadows: [
              const Shadow(
                color: Colors.orangeAccent,
                offset: Offset(0, 2),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
