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
        Center(
            child: CustomRoundedButton(
          onTap: () {
            // Navigator.push(context, route)
          },
          text: "Next",
          mHeight: 35,
          mWidth: 70,
          bgColor: AppColors.greyColor,
          textColor: AppColors.darkBlackColor,
          fontSize: 14,
        ))
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
        ),
        ui_helpers.customSizedBox(mHeight: 35),
        Center(
            child: CustomRoundedButton(
          onTap: () {
            // Navigator.push(context, route)
          },
          text: "Next",
          mHeight: 35,
          mWidth: 70,
          bgColor: AppColors.greyColor,
          textColor: AppColors.darkBlackColor,
          fontSize: 14,
        ))
      ],
    );

Widget signUpPageWidgetsThree() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: " What’s your gender?",
            fontSize: 20,
            textColor: AppColors.whiteColor),
        ui_helpers.customSizedBox(mHeight: 10),
        Row(
          children: [
            CustomRoundedButton(
              onTap: () {},
              text: "Male",
              mWidth: 80,
              mHeight: 35,
              fontSize: 15,
              isOutlined: true,
              textColor: AppColors.whiteColor,
            ),
            ui_helpers.customSizedBox(mWidth: 10),
            CustomRoundedButton(
              onTap: () {},
              text: "Female",
              mWidth: 80,
              mHeight: 35,
              fontSize: 15,
              isOutlined: true,
              textColor: AppColors.whiteColor,
            ),
            ui_helpers.customSizedBox(mWidth: 10),
            CustomRoundedButton(
              onTap: () {},
              text: "Others",
              mWidth: 80,
              mHeight: 35,
              fontSize: 15,
              isOutlined: true,
              textColor: AppColors.whiteColor,
            )
          ],
        ),
        ui_helpers.customSizedBox(mHeight: 35),
        Center(
            child: CustomRoundedButton(
          onTap: () {
            // Navigator.push(context, route)
          },
          text: "Next",
          mHeight: 35,
          mWidth: 70,
          bgColor: AppColors.greyColor,
          textColor: AppColors.darkBlackColor,
          fontSize: 14,
        ))
      ],
    );

Widget signUpPageWidgetsFour() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: ' What’s your name?',
            fontSize: 20,
            textColor: AppColors.whiteColor),
        TextField(
          style: TextStyle(color: AppColors.whiteColor),
          cursorColor: AppColors.whiteColor,
          decoration: ui_helpers.customInputDecoration(),
        ),
        ui_helpers.customSizedBox(mHeight: 7),
        CustomText(
            text: '  This appears on your spotify profile',
            fontSize: 8,
            textColor: AppColors.whiteColor),
            ui_helpers.customSizedBox(mHeight: 25),
            Divider(color: AppColors.greyColor,),
            ui_helpers.customSizedBox(mHeight: 25),
            CustomText(text: 'By tapping on “Create account”, you agree to the spotify Terms of Use. ', fontSize: 10, textColor: AppColors.whiteColor),
            ui_helpers.customSizedBox(mHeight: 25),
            CustomText(text: 'Terms of Use', fontSize: 10, textColor: AppColors.greenColor),
            ui_helpers.customSizedBox(mHeight: 25),
            CustomText(text: 'To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.', fontSize: 10, textColor: AppColors.whiteColor),
            ui_helpers.customSizedBox(mHeight: 25),
            CustomText(text: 'Privacy Policy  ', fontSize: 10, textColor: AppColors.greenColor),
            ui_helpers.customSizedBox(mHeight: 25),
            CustomText(text: 'Please send me news and offers from Spotify.', fontSize: 10, textColor: AppColors.whiteColor),
            RadioListTile.adaptive(value: false, groupValue: false, onChanged: (value){}),
            ui_helpers.customSizedBox(mHeight: 25),
            CustomText(text: 'Share my registration data with Spotify’s content providers for marketing purposes.', fontSize: 10, textColor: AppColors.whiteColor)
      ],
    );
