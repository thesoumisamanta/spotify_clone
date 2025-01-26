import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/domain/app_routes.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  double height = 10;
  double width = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animate();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, AppRoutes.home_page);
    });
  }

  void animate() {
    width = 80;
    height = 80;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: AnimatedContainer(
            duration: Duration(seconds: 2),
            width: width,
            height: height,
            child: SvgPicture.asset("assets/logo/spotify.svg",
                height: 100, width: 100)),
      ),
    );
  }
}
