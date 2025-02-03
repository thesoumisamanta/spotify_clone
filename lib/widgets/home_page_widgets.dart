import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/models/cards_model.dart';

final List<CardsModel> frames = [
  CardsModel(imgPath: 'assets/images/others/1.png', textName: '1(Remastered)'),
  CardsModel(imgPath: 'assets/images/others/1.png', textName: '1(Remastered)'),
  CardsModel(imgPath: 'assets/images/others/1.png', textName: '1(Remastered)'),
  CardsModel(imgPath: 'assets/images/others/1.png', textName: '1(Remastered)'),
];

final List<CardsModel> topSongsList = [
  CardsModel(
      imgPath: 'assets/images/others/A1.png', textName: 'Your Top Songs 2021'),
  CardsModel(
      imgPath: 'assets/images/others/A1.png', textName: 'Your Top Songs 2021')
];

final List<CardsModel> editorPicks = [
  CardsModel(
      imgPath: 'assets/images/others/A1.png',
      textName: 'Ed Sheeran, Big Sean, \nJuice WRLD, Post Malone'),
  CardsModel(
      imgPath: 'assets/images/others/A1.png',
      textName: 'Mitski, Tame Impala, \nGlass Animals, Charli XCX'),
      CardsModel(
      imgPath: 'assets/images/others/A1.png',
      textName: 'Mitski, Tame Impala, \nGlass Animals, Charli XCX')
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
    height: 140,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: frames.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/others/2021_2021.png',
              width: 60,
              height: 60,
            ),
            customSizedBox(mWidth: 8),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: '#SPOTIFYWRAPPED',
                    fontSize: 10,
                    textColor: AppColors.greyColor),
                CustomText(
                    text: 'Your 2021 in review',
                    fontSize: 20,
                    textColor: AppColors.whiteColor),
              ],
            ))
          ],
        ),
      ),
    ],
  );
}

Widget topSongsWidget() {
  return SizedBox(
    height: 172,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: topSongsList.length,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Image.asset(
                topSongsList[index].imgPath,
                height: 155,
                width: 150,
              ),
              CustomText(
                  text: topSongsList[index].textName,
                  fontSize: 12,
                  textColor: AppColors.whiteColor)
            ],
          ),
        );
      },
    ),
  );
}

Widget editorsPicksWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: CustomText(
            text: 'Editor’s picks',
            fontSize: 20,
            textColor: AppColors.whiteColor),
      ),
      SizedBox(
        height: 250,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: editorPicks.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Image.asset(editorPicks[index].imgPath, height: 155, width: 155,),
                    CustomText(
                      text: editorPicks[index].textName,
                      fontSize: 11,
                      textColor: AppColors.greyColor,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              );
            }),
      )
    ],
  );
}
