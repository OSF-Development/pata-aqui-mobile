import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double borderRadius;
  final Function()? onPressed;

  FormButton(
    this.borderRadius,
    this.text, {
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
