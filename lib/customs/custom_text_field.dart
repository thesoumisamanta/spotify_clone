import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  // final double mHeight;
  // final double mWidth;
  final Color bgColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final Color? hintTextColor;
  final bool obscureText;
  final TextInputType keyboardType;

  CustomTextField({
    super.key,
    // required this.mHeight,
    // required this.mWidth,
    required this.bgColor,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.hintTextColor,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: bgColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyle(color: hintTextColor)),
    );
  }
}
