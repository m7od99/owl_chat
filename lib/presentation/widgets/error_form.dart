import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  const FormError({
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        Icon(Icons.error, color: Colors.red),
        SizedBox(width: 4),
        Text(
          error,
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}
