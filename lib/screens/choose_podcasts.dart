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
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/models/podcast_model.dart';

class ChoosePodcasts extends StatefulWidget {
  const ChoosePodcasts({super.key});

  @override
  State<ChoosePodcasts> createState() => _ChoosePodcastsState();
}

class _ChoosePodcastsState extends State<ChoosePodcasts> {
  List<int> selectedPodcasts = [];
  List<List<PodcastModel>> podcasts = [
    [
      PodcastModel(
          imgPath: "assets/images/singers/arijit.jpg", podcast: "Arijit Singh"),
      PodcastModel(
          imgPath: "assets/images/singers/alka.png", podcast: "Alka Yagnik"),
      PodcastModel(
          imgPath: "assets/images/singers/asha.jpg", podcast: "More in Crime"),
    ],
    [
      PodcastModel(
          imgPath: "assets/images/singers/arijit.jpg", podcast: "Arijit Singh"),
      PodcastModel(
          imgPath: "assets/images/singers/alka.png", podcast: "Alka Yagnik"),
      PodcastModel(
          imgPath: "assets/images/singers/asha.jpg", podcast: "More in Crime"),
    ],
    [
      PodcastModel(
          imgPath: "assets/images/singers/arijit.jpg", podcast: "Arijit Singh"),
      PodcastModel(
          imgPath: "assets/images/singers/alka.png", podcast: "Alka Yagnik"),
      PodcastModel(
          imgPath: "assets/images/singers/asha.jpg", podcast: "More in Crime"),
    ],
    [
      PodcastModel(
          imgPath: "assets/images/singers/arijit.jpg", podcast: "Arijit Singh"),
      PodcastModel(
          imgPath: "assets/images/singers/alka.png", podcast: "Alka Yagnik"),
      PodcastModel(
          imgPath: "assets/images/singers/asha.jpg", podcast: "More in Crime"),
    ],
    [
      PodcastModel(
          imgPath: "assets/images/singers/arijit.jpg", podcast: "Arijit Singh"),
      PodcastModel(
          imgPath: "assets/images/singers/alka.png", podcast: "Alka Yagnik"),
      PodcastModel(
          imgPath: "assets/images/singers/asha.jpg", podcast: "More in Crime"),
    ],
    [
      PodcastModel(
          imgPath: "assets/images/singers/arijit.jpg", podcast: "Arijit Singh"),
      PodcastModel(
          imgPath: "assets/images/singers/alka.png", podcast: "Alka Yagnik"),
      PodcastModel(
          imgPath: "assets/images/singers/asha.jpg", podcast: "More in Crime"),
    ],
    // Add more lists as needed
  ];

  List<List<Map<String, dynamic>>> getPodcastsAsMap() {
    return podcasts
        .map((list) => list.map((model) => model.toMap()).toList())
        .toList();
  }

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
                    text: 'Now choose some\npodcasts.',
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
                    itemCount: podcasts.length,
                    itemBuilder: (_, index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 12),
                        height: 170,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: podcasts[index].length,
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
                                            podcasts[index][childIndex].podcast,
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
                                            imgPath: podcasts[index][childIndex]
                                                .imgPath,
                                            isSelected: selectedPodcasts
                                                .contains(childIndex),
                                          ),
                                          customSizedBox(mHeight: 5),
                                          CustomText(
                                            text: podcasts[index][childIndex]
                                                .podcast,
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
                    child: selectedPodcasts.length >= 3
                        ? Center(
                            child: Padding(
                            padding: const EdgeInsets.only(top: 150.0),
                            child: CustomRoundedButton(
                              mWidth: 80,
                              fontSize: 18,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.choose_podcasts);
                              },
                              text: 'Next',
                            ),
                          ))
                        : null,
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
