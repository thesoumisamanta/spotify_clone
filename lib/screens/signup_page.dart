import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/domain/app_colors.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlackColor,
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SvgPicture.asset("assets/icons/dark_mode/Left.svg",),
        ),
        title: Center(child: CustomText(text: "Create account", fontSize: 18, textColor: AppColors.whiteColor)),
      ),
      body: Container(
        color: AppColors.darkBlackColor,
      ),
    );
  }
}
