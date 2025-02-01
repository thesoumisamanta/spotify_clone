import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';

class CustomCircularBg extends StatelessWidget {
  double mHeight;
  double mWidth;
  String imgPath;
  bool isSelected;

  CustomCircularBg({
    this.mWidth = 100,
    this.mHeight = 100,
    required this.imgPath,
    this.isSelected = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth,
      height: mHeight,
      decoration: BoxDecoration(
          border: Border.all(
              strokeAlign: BorderSide.strokeAlignOutside,
              color: isSelected ? AppColors.whiteColor : Colors.transparent,
              width: isSelected ? 2.0 : 0),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          )),
      child: isSelected
          ? Center(
              child: CircleAvatar(
              backgroundColor: AppColors.blackColor.withOpacity(0.5),
              radius: mWidth / 2,
              // child: Icon(
              // Icons.done,
              // color: AppColors.greenColor,
              // size: 30,
              //             ),
            ))
          : Container(),
    );
  }
}
