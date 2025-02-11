import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_players_widget.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/models/music_player_model.dart';
import 'package:spotify_clone/widgets/home_bottom_bar.dart';
import 'package:spotify_clone/widgets/library_bottom_bar.dart';
import 'package:spotify_clone/widgets/search_bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> bottomBar = [
    HomeBottomBar(),
    SearchBottomBar(),
    LibraryBottomBar(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColors.darkBlackColor,
      body: Stack(
        children: [
          bottomBar[selectedIndex],
            Align(
            alignment: Alignment.bottomCenter,
            child: CustomPlayersWidget(
              musicPlayerModel: MusicPlayerModel(
              albumTitle: 'The Beatles',
              songTitle: 'From Me to You - Mono / Remastered',
              thumbnailpath: 'assets/images/others/artist_reavealed.png',
              isBluetooth: true,
              bluetoothName: 'BEATSPILL+',
              mHeight: 60,
              bgColor: Color(0xFF550A1C),
              ),
            ),
            )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: AppColors.whiteColor),
          unselectedLabelStyle: TextStyle(color: AppColors.greyColor),
          selectedItemColor: AppColors.whiteColor,
          unselectedItemColor: AppColors.greyColor,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          backgroundColor: AppColors.darkBlackColor,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/dark_mode/Home_outline.svg',
                  height: 20,
                  width: 20,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/dark_mode/Search_outline.svg',
                height: 20,
                width: 20,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/dark_mode/Library_outline.svg',
                  height: 20,
                  width: 20,
                ),
                label: 'Library'),
          ]),
    );
  }
}
