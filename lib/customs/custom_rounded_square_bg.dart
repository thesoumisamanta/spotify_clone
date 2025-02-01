import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomRoundedSquareBg extends StatelessWidget {
  final double mHeight;
  final double mWidth;
  final String imgPath;
  final bool isSpotifyOriginal;
  final bool isBlackBg;

  CustomRoundedSquareBg({
    this.mHeight = 100,
    this.mWidth = 100,
    required this.imgPath,
    this.isSpotifyOriginal = false,
    this.isBlackBg = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight,
      width: mWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
        ),
      ),
      child: isSpotifyOriginal
          ? Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12)),
                  color: isBlackBg ? Colors.white : Colors.black,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/logo/spotify_white.svg",
                    width: 10,
                    height: 10,
                    colorFilter: ColorFilter.mode(
                      isBlackBg ? Colors.black : Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            )
          : Container(),
    );
  }
}
