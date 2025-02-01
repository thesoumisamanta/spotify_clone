import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';

class CustomRoundedSquareBg extends StatelessWidget {
  double mHeight;
  double mWidth;
  String imgPath;
  bool isSelected;

  CustomRoundedSquareBg(
      {this.mHeight = 100,
      this.mWidth = 100,
      required this.imgPath,
      this.isSelected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight,
      width: mWidth,
      decoration: BoxDecoration(
          border: Border.all(
              strokeAlign: BorderSide.strokeAlignOutside,
              color: isSelected ? AppColors.whiteColor : Colors.transparent,
              width: isSelected ? 2.0 : 0),
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          )),
    );
  }
}
