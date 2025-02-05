import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget searchTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(text: 'Search', fontSize: 20, textColor: AppColors.whiteColor),
      SvgPicture.asset('assets/icons/dark_mode/camera.svg')
    ],
  );
}

Widget topGenres() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            height: 110,
            margin: EdgeInsets.all(6.0),
            color: Colors.primaries[Random().nextInt(Color.fromRGBO(r, g, b, opacity))],
            child: Stack(
              children: [
                Positioned(child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(backgroundBlendMode: imag),
                ))
              ],
            ),
          ),
          ),
          Expanded(
              child: Container(
            height: 110,
            margin: EdgeInsets.all(6.0),
            color: Colors.pink,
          )),
        ],
      )
    ],
  );
}
