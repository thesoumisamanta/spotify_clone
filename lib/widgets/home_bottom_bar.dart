import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/widgets/home_page_widgets.dart';

class HomeBottomBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlackColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              recentlyPlayedWidget(),
              customSizedBox(),
              recentlyPlayedFrame(),
              reviewList(),
              customSizedBox(),
              topSongsWidget(),
              customSizedBox(),
              editorsPicksWidget(),
            ],
          ),
        ),
      ),
    );
  }
}


