import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;

  const CustomTextButton({super.key, 
    required this.onPressed,
    required this.text,
    required this.fontSize,
    this.fontWeight = FontWeight.bold,
    this.textColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, 
      child: Text(text, style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor
      ),));
  }
}


