import 'package:flutter/material.dart';

class CustomRoundedSquareBg extends StatelessWidget {
  double mHeight;
  double mWidth;
  String imgPath;

  CustomRoundedSquareBg({this.mHeight = 100, this.mWidth = 100, required this.imgPath});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight,
      width: mWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(10.0)
      ),
    );
  }
}
