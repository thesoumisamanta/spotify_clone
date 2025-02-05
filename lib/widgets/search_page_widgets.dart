import 'dart:math';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/domain/app_colors.dart';

Widget searchTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(text: 'Search', fontSize: 20, textColor: AppColors.whiteColor),
      SvgPicture.asset('assets/icons/dark_mode/camera.svg')
    ],
  );
}

Widget topGenres({
  String? imageUrl, 
  required String leftBoxTitle,  // Title for left container
  required String rightBoxTitle  // Title for right container
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              height: 110,
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.circular(5.0)
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: imageUrl != null ? -2 : 5,
                    right: imageUrl != null ? -28 : -20,
                    child: Transform.rotate(
                      angle: imageUrl != null ? 5 * pi/180 : 30 * pi/180,
                      child: imageUrl != null ? 
                        Image.asset(
                          imageUrl,
                          height: 90,
                          width: 90,
                          fit: BoxFit.cover,
                        ) :
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1F1F21),
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 4,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: CustomText(
                              text: 'Album', 
                              fontSize: 12, 
                              textColor: AppColors.whiteColor
                            )
                          ),
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                    child: CustomText(
                      text: leftBoxTitle,  // Using the provided title
                      fontSize: 15, 
                      textColor: AppColors.whiteColor
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 110,
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.circular(5.0)
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 5,
                    right: -20,
                    child: Transform.rotate(
                      angle: 30 * pi/180,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1F1F21),
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 4,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: CustomText(
                            text: 'Album', 
                            fontSize: 12, 
                            textColor: AppColors.whiteColor
                          )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                    child: CustomText(
                      text: rightBoxTitle,  // Using the provided title
                      fontSize: 17, 
                      textColor: AppColors.whiteColor
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
