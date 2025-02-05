import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/custom_text_field.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/widgets/search_page_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlackColor,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customSizedBox(),
                searchTitle(),
                customSizedBox(),
                SizedBox(
                  height: 40,
                  child: CustomTextField(
                    bgColor: AppColors.whiteColor,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                          'assets/icons/light_mode/Search_Solid.svg',
                          colorFilter: ColorFilter.mode(
                              AppColors.darkBlackColor, BlendMode.srcIn)),
                    ),
                    hintText: 'Artists, songs, or podcasts',
                    hintTextColor: AppColors.blackColor,
                  ),
                ),
                customSizedBox(),
                CustomText(
                    text: ' Your top genres',
                    fontSize: 15,
                    textColor: AppColors.whiteColor),
                customSizedBox(),
                topGenres(imageUrl: 'assets/images/others/Cover Disc.png', leftBoxTitle: 'Pop', rightBoxTitle: 'Indie'),
                 CustomText(
                    text: ' Popular podcast categories',
                    fontSize: 15,
                    textColor: AppColors.whiteColor),
                customSizedBox(),
                topGenres(leftBoxTitle: 'News & Politics', rightBoxTitle: 'Comedy'),
                 CustomText(
                    text: ' Browse all',
                    fontSize: 15,
                    textColor: AppColors.whiteColor),
                customSizedBox(),
                topGenres(leftBoxTitle: '2021 Wrapped', rightBoxTitle: 'Podcasts'),
                topGenres(leftBoxTitle: 'Made for you', rightBoxTitle: 'Charts'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
