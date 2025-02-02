import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget recentlyPlayedWidget() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CustomText(
                text: 'Recently played',
                fontSize: 18,
                textColor: AppColors.whiteColor),
            Spacer(),
            SvgPicture.asset('assets/icons/dark_mode/Notification.svg'),
            customSizedBox(mWidth: 20),
            SvgPicture.asset('assets/icons/dark_mode/Timer.svg'),
            customSizedBox(mWidth: 20),
            SvgPicture.asset('assets/icons/dark_mode/Settings.svg'),  
          ],
        ),
      )
    ],
  );
}

Widget recentlyPlayedFrame(){
  return ListView.builder(itemBuilder: itemBuilder)
}
