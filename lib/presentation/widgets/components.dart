import 'package:flutter/material.dart';

InputDecoration inputDecoration({
  required String hint,
  required String labelText,
  required IconData icon,
}) {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    // borderSide: BorderSide(color: ),
    gapPadding: 10,
  );

  return InputDecoration(
    labelText: labelText,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    suffixIcon: Padding(
      padding: EdgeInsets.fromLTRB(
        (20),
        (20),
        (20),
        (20),
      ),
      child: Icon(
        icon,
        size: 25,
      ),
    ),
    hintText: hint,
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}
