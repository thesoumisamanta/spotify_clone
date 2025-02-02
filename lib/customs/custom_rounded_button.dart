import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_colors.dart';

class CustomRoundedButton extends StatelessWidget {
  final VoidCallback onTap;
  final double mWidth;
  final double mHeight;
  final Color bgColor;
  final String text;
  final String? iconImage;
  final Color textColor;
  final bool isOutlined;
  final double fontSize;

  const CustomRoundedButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.mWidth = 300,
      this.mHeight = 40,
      this.bgColor = Colors.white,
      this.iconImage,
      this.textColor = Colors.black,
      this.isOutlined = false,
      this.fontSize = 25
      });

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
                          color: textColor
                          ),
                    )))
                  ],
                ),
              )
            : Center(
                child: Text(text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize,
                        color: textColor
                        )),
              ),
      ),
    );
  }
}
