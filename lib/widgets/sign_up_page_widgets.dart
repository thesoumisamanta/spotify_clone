import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_rounded_button.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/customs/ui_helpers.dart' as ui_helpers;

Widget signUpPageWidgetsOne() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: " What’s your email?",
            fontSize: 20,
            textColor: AppColors.whiteColor),
        TextField(
          style: TextStyle(color: AppColors.whiteColor),
          cursorColor: AppColors.whiteColor,
          decoration: ui_helpers.customInputDecoration(),
        ),
        ui_helpers.customSizedBox(mHeight: 7),
        CustomText(
          text: " You’ll need to confirm this email later.",
          fontSize: 8,
          textColor: AppColors.whiteColor,
        ),
        ui_helpers.customSizedBox(mHeight: 35),
        Center(child: CustomRoundedButton(onTap: (){
          // Navigator.push(context, route)
        }, text: "Next", mHeight: 35, mWidth: 70, bgColor: AppColors.greyColor, textColor: AppColors.darkBlackColor, fontSize: 14,))
      ],
    );

Widget signUpPageWidgetsTwo() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: " Create a password",
            fontSize: 20,
            textColor: AppColors.whiteColor),
        TextField(
          style: TextStyle(color: AppColors.whiteColor),
          cursorColor: AppColors.whiteColor,
          decoration: ui_helpers.customInputDecoration(),
        ),
        ui_helpers.customSizedBox(mHeight: 7),
        CustomText(
          text: " Use atleast 8 characters.",
          fontSize: 8,
          textColor: AppColors.whiteColor,
        )
      ],
    );

Widget signUpPageWidgetsThree() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: " What’s your gender?",
            fontSize: 20,
            textColor: AppColors.whiteColor),
        TextField(
          style: TextStyle(color: AppColors.whiteColor),
          cursorColor: AppColors.whiteColor,
          decoration: ui_helpers.customInputDecoration(),
        ),
        ui_helpers.customSizedBox(mHeight: 7),
      ],
    );
