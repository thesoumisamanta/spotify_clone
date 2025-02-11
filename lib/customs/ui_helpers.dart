import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';

Widget customSizedBox({
  double mHeight = 12,
  double mWidth = 10
}) => SizedBox(
  height: mHeight,
  width: mWidth,
);

InputDecoration customInputDecoration() => InputDecoration(
  filled: true,
  fillColor: AppColors.greyColor,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(
      color: AppColors.greenColor
    )
  )
);

// Widget customTextField({}) => TextField();