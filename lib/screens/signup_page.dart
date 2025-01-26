import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/ui_helpers.dart' as ui_helpers;
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/widgets/sign_up_page_widgets.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlackColor,
      appBar: AppBar(
        backgroundColor: AppColors.darkBlackColor,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset(
              "assets/icons/dark_mode/Left.svg",
            ),
          ),
        ),
        title: Center(
            child: CustomText(
                text: "Create account",
                fontSize: 18,
                textColor: AppColors.whiteColor)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
        child: signUpPageWidgetsOne()
      ),
    );
  }
}
