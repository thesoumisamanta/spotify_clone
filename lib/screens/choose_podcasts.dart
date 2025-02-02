import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_rounded_button.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/custom_rounded_square_bg.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/custom_text_field.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/models/cards_model.dart';

import 'package:spotify_clone/screens/home_page.dart';

class ChoosePodcasts extends StatefulWidget {
  const ChoosePodcasts({super.key});

  @override
  State<ChoosePodcasts> createState() => _ChoosePodcastsState();
}

class _ChoosePodcastsState extends State<ChoosePodcasts> {
  List<List<CardsModel>> textNames = [
    [
      CardsModel(
          imgPath: "assets/images/singers/arijit.jpg",
          textName: "Arijit Singh",
          isBlackBg: true,
          isSpotifyOriginal: true),
      CardsModel(
          imgPath: "assets/images/singers/alka.png", textName: "Alka Yagnik"),
      CardsModel(imgPath: "assets/images/singers/alka.png", textName: "More in Crime"),
    ],
    [
      CardsModel(
        imgPath: "assets/images/singers/arijit.jpg",
        textName: "Arijit Singh",
      ),
      CardsModel(
          imgPath: "assets/images/singers/alka.png",
          textName: "Alka Yagnik",
          isBlackBg: false,
          isSpotifyOriginal: true),
      CardsModel(imgPath: "assets/images/singers/alka.png", 
          textName: "More in Crime", isBlackBg: true, isSpotifyOriginal: true),
    ],
    [
      CardsModel(
          imgPath: "assets/images/singers/arijit.jpg",
          textName: "Arijit Singh",
          isBlackBg: true,
          isSpotifyOriginal: true),
      CardsModel(
        imgPath: "assets/images/singers/alka.png",
        textName: "Alka Yagnik",
      ),
      CardsModel(imgPath: "assets/images/singers/alka.png", textName: "More in Crime"),
    ],
    [
      CardsModel(
          imgPath: "assets/images/singers/arijit.jpg", textName: "Arijit Singh"),
      CardsModel(
          imgPath: "assets/images/singers/alka.png",
          textName: "Alka Yagnik",
          isBlackBg: true,
          isSpotifyOriginal: true),
      CardsModel(imgPath: "assets/images/singers/alka.png", textName: "More in Crime"),
    ],
    [
      CardsModel(
          imgPath: "assets/images/singers/arijit.jpg", textName: "Arijit Singh"),
      CardsModel(
          imgPath: "assets/images/singers/alka.png", textName: "Alka Yagnik"),
      CardsModel(imgPath: "assets/images/singers/alka.png", textName: "More in Crime"),
    ],
    [
      CardsModel(
          imgPath: "assets/images/singers/arijit.jpg", textName: "Arijit Singh"),
      CardsModel(
          imgPath: "assets/images/singers/alka.png", textName: "Alka Yagnik"),
      CardsModel(imgPath: "assets/images/singers/alka.png", textName: "More in Crime"),
    ],
    // Add more lists as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlackColor,
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customSizedBox(mHeight: 20),
                CustomText(
                    text: 'Now choose some\ntextNames.',
                    fontSize: 25,
                    textColor: AppColors.whiteColor),
                customSizedBox(mHeight: 10),
                SizedBox(
                    height: 40,
                    width: 350,
                    child: CustomTextField(
                      bgColor: AppColors.whiteColor,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                            'assets/icons/light_mode/Search_Solid.svg',
                            colorFilter: ColorFilter.mode(
                                AppColors.greyColor, BlendMode.srcIn)),
                      ),
                      hintText: 'Search',
                      hintTextColor: AppColors.blackColor,
                    )),
              ],
            ),
            customSizedBox(mHeight: 30),
            Expanded(
              child: Stack(children: [
                ListView.builder(
                    itemCount: textNames.length,
                    itemBuilder: (_, index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 12),
                        height: 170,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: textNames[index].length,
                            itemBuilder: (_, childIndex) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: childIndex == 2
                                    ? Container(
                                        margin: EdgeInsets.only(bottom: 40),
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.primaries[Random()
                                                .nextInt(
                                                    Colors.primaries.length -
                                                        1)]),
                                        child: Center(
                                          child: Text(
                                            textNames[index][childIndex].textName,
                                            style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    : Column(
                                        children: [
                                          CustomRoundedSquareBg(
                                            mHeight: 120,
                                            mWidth: 120,
                                            imgPath: textNames[index][childIndex]
                                                .imgPath,
                                            isBlackBg: textNames[index]
                                                    [childIndex]
                                                .isBlackBg,
                                            isSpotifyOriginal: textNames[index]
                                                    [childIndex]
                                                .isSpotifyOriginal,
                                          ),
                                          customSizedBox(mHeight: 5),
                                          CustomText(
                                            text: textNames[index][childIndex]
                                                .textName,
                                            fontSize: 10,
                                            textColor: AppColors.whiteColor,
                                          ),
                                        ],
                                      ),
                              );
                            }),
                      );
                    }),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            stops: [0.1, 0.8],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              AppColors.darkBlackColor.withOpacity(0.5)
                            ])),
                    child: Center(
                        child: CustomRoundedButton(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      text: 'Done',
                      mWidth: 100,
                      mHeight: 45,
                      fontSize: 16,
                    )),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
