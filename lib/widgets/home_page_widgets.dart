import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/models/cards_model.dart';

final List<CardsModel> frames = [
  CardsModel(
      imgPath: 'assets/images/others/1.png', textName: '1(Remastered)'),
  CardsModel(
      imgPath: 'assets/images/others/1.png', textName: '1(Remastered)'),
  CardsModel(
      imgPath: 'assets/images/others/1.png', textName: '1(Remastered)'),
  CardsModel(
      imgPath: 'assets/images/others/1.png', textName: '1(Remastered)'),
];

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

Widget recentlyPlayedFrame() {
  return SizedBox(
    height: 200,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: frames.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Image.asset(
                  frames[index].imgPath,
                  width: 100,
                  height: 100,
                ),
                CustomText(
                    text: frames[index].textName,
                    fontSize: 11,
                    textColor: AppColors.whiteColor)
              ],
            ),
          );
        }),
  );
}

Widget reviewList() {
  return Column();
}
