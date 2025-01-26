import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_rounded_button.dart';
import 'package:spotify_clone/domain/app_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlackColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CustomRoundedButton(
              bgColor: AppColors.greenColor,
              text: "Sign up free",
              onTap: () {}),
              SizedBox(
                height: 12,
              ),
          CustomRoundedButton(
              bgColor: AppColors.darkBlackColor,
              text: "Continue with Google",
              iconImage: "assets/logo/google.svg",
              isOutlined: true,
              onTap: () {}),
              SizedBox(
                height: 12,
              ),
          CustomRoundedButton(
              bgColor: AppColors.darkBlackColor,
              text: "Continue with Facebook",
              iconImage: "assets/logo/facebook.svg",
              isOutlined: true,
              onTap: () {}),
              SizedBox(
                height: 12,
              ),
          CustomRoundedButton(
              bgColor: AppColors.darkBlackColor,
              text: "Continue with Apple",
              iconImage: "assets/logo/apple.svg",
              isOutlined: true,
              onTap: () {}),
              SizedBox(
                height: 12,
              ),
        ]),
      ),
    );
  }
}
