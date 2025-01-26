import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;

  CustomText(
      {required this.text,
      required this.fontSize,
      required this.textColor,
      this.fontWeight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
        fontWeight: fontWeight
      ),
    );
  }
}
