import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final double borderRadius;
  final Function()? onPressed;

  FormButton(
    this.borderRadius,
    this.text, {
    this.color,
    this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(16),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
