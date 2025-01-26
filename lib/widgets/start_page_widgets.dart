import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/ui_helpers.dart' as ui_helpers;
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/custom_text_button.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';

Widget startPageWidgets(BuildContext context) => Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 50),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/logo/spotify_white.svg'),
            ui_helpers.customSizedBox(),
            CustomText(text: "Millions of Songs.\n Free on Spotify.", fontSize: 27, textColor: AppColors.whiteColor),
            ui_helpers.customSizedBox(),
            CustomRoundedButton(
                bgColor: AppColors.greenColor,
                text: "Sign up free",
                textColor: AppColors.darkBlackColor,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.signUp_page);
                }),
            ui_helpers.customSizedBox(),
            CustomRoundedButton(
                bgColor: AppColors.darkBlackColor,
                text: "Continue with Google",
                textColor: AppColors.whiteColor,
                iconImage: "assets/logo/google.svg",
                isOutlined: true,
                onTap: () {}),
            ui_helpers.customSizedBox(),
            CustomRoundedButton(
                bgColor: AppColors.darkBlackColor,
                text: "Continue with Facebook",
                textColor: AppColors.whiteColor,
                iconImage: "assets/logo/facebook.svg",
                isOutlined: true,
                onTap: () {}),
            ui_helpers.customSizedBox(),
            CustomRoundedButton(
                bgColor: AppColors.darkBlackColor,
                text: "Continue with Apple",
                textColor: AppColors.whiteColor,
                iconImage: "assets/logo/apple.svg",
                isOutlined: true,
                onTap: () {}),
            ui_helpers.customSizedBox(),
            CustomTextButton(onPressed: () {}, text: "Log in", fontSize: 18)
          ]),
    );
