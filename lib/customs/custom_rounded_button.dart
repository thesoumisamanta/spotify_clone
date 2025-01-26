import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';

class CustomRoundedButton extends StatelessWidget {
  VoidCallback onTap;
  double mWidth;
  double mHeight;
  Color bgColor;
  String text;
  String? iconImage;
  Color textColor;
  bool isOutlined;

  CustomRoundedButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.mWidth = 300,
      this.mHeight = 50,
      this.bgColor = Colors.white,
      this.iconImage,
      this.textColor = Colors.black,
      this.isOutlined = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: mHeight,
        width: mWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isOutlined ? Colors.transparent : bgColor,
            border: Border.all(
                width: 1,
                color: isOutlined ? AppColors.whiteColor : Colors.transparent)),
        child: iconImage != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Row(
                  children: [
                    SvgPicture.asset(iconImage!, height: 25, width: 25),
                    Expanded(
                        child: Center(
                            child: Text(
                      text,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.whiteColor),
                    )))
                  ],
                ),
              )
            : Center(
                child: Text(text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColors.whiteColor)),
              ),
      ),
    );
  }
}
