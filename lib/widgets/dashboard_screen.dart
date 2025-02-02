import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/widgets/home_bottom_bar.dart';
import 'package:spotify_clone/widgets/library_bottom_bar.dart';
import 'package:spotify_clone/widgets/search_bottom_bar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> bottomBar = [
    HomeBottomBar(),
    SearchBottomBar(),
    LibraryBottomBar(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlackColor,
      bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
