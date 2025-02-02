import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final int maxLines;
  final TextOverflow overflow;

  CustomText({
    required this.text,
    required this.fontSize,
    required this.textColor,
    this.fontWeight = FontWeight.bold,
    this.maxLines = 2,
    this.overflow = TextOverflow.clip,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, color: textColor, fontWeight: fontWeight),
          maxLines: maxLines,
          overflow: overflow,
    );
  }
}
