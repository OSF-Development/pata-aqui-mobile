import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final TextInputType? textType;
  final bool obscureText;
  final String? label;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  FormInput(
    this.obscureText, {
    this.textType,
    this.label,
    this.color,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
