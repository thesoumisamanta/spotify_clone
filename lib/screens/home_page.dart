import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      body: bottomBar[selectedIndex],
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
