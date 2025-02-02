import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/models/recently_played_frame_model.dart';
import 'package:spotify_clone/widgets/home_page_widgets.dart';

class HomeBottomBar extends StatelessWidget {
  final List<RecentlyPlayedFrameModel> frames = [
    RecentlyPlayedFrameModel(imgPath: 'assets/images/others/1.png', frameName: '1(Remastered)')
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlackColor,
        body: Column(
          children: [
            recentlyPlayedWidget(),
          ],
        ),
      ),
    );
  }
}
