import 'package:flutter/material.dart';

class MusicPlayerModel {
  final String albumTitle;
  final String songTitle;
  final String thumbnailpath;
  bool isBluetooth;
  final String isBluetoothName;
  double mHeight;
  Color bgColor;

  MusicPlayerModel(
      {required this.albumTitle,
      required this.songTitle,
      required this.thumbnailpath,
      required this.bgColor,
      this.isBluetooth = false,
      this.isBluetoothName = '',
      this.mHeight = 60});
}
