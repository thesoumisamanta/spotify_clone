import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/custom_sized_box.dart';
import 'package:spotify_clone/customs/custom_text_button.dart';
import 'package:spotify_clone/domain/app_colors.dart';

Widget startPageWidgets() =>
    Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end, 
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SvgPicture.asset('assets/logo/spotify_white.svg'),
        customSizedBox(),
        Text(
          "Millions of Songs.\n Free on Spotify.",
          style: TextStyle(
              fontSize: 27,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold),
        ),
        customSizedBox(),
        CustomRoundedButton(
            bgColor: AppColors.greenColor, text: "Sign up free", onTap: () {}),
        customSizedBox(),
        CustomRoundedButton(
            bgColor: AppColors.darkBlackColor,
            text: "Continue with Google",
            iconImage: "assets/logo/google.svg",
            isOutlined: true,
            onTap: () {}),
        customSizedBox(),
        CustomRoundedButton(
            bgColor: AppColors.darkBlackColor,
            text: "Continue with Facebook",
            iconImage: "assets/logo/facebook.svg",
            isOutlined: true,
            onTap: () {}),
        customSizedBox(),
        CustomRoundedButton(
            bgColor: AppColors.darkBlackColor,
            text: "Continue with Apple",
            iconImage: "assets/logo/apple.svg",
            isOutlined: true,
            onTap: () {}),
        customSizedBox(),
        CustomTextButton(onPressed: () {}, text: "Log in", fontSize: 18)
      ]),
    );
