import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/models/music_player_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPlayersWidget extends StatelessWidget {
  final MusicPlayerModel musicPlayerModel;

  const CustomPlayersWidget({
    super.key,
    required this.musicPlayerModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: musicPlayerModel.mHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: musicPlayerModel.bgColor),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                          image: AssetImage(musicPlayerModel.thumbnailpath))),
                ),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children: [
                      CustomText(text: musicPlayerModel.songTitle, fontSize: 10, textColor: AppColors.whiteColor),
                      Expanded(child: CustomText(text: musicPlayerModel.albumTitle, fontSize: 10, textColor: AppColors.whiteColor, overflow: TextOverflow.fade,)),
                      customSizedBox(),
                      musicPlayerModel.isBluetooth 
                          ? SvgPicture.asset('assets/icon/dark_mode/bluetooth.svg') 
                          : Icon(Icons.devices, color: AppColors.greenColor,),
                          customSizedBox(),
                          SvgPicture.asset('assets/icons/dark_mode/Ellipse 2.svg')
                    ],
                  )
                ],))
              ],
            )
          ],
        ),
      ),
    );
  }
}
