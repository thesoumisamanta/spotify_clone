import 'package:flutter/material.dart';

class CustomCircularBg extends StatelessWidget {
  double mHeight;
  double mWidth;
  String imgPath;

  CustomCircularBg(
      {this.mWidth = 100, this.mHeight = 100, required this.imgPath});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth,
      height: mHeight,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(imgPath),
          )),
    );
  }
}
