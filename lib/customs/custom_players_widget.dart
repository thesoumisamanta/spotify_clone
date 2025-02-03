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
    return Padding(
      padding: EdgeInsets.only(left: 7, right: 7),
      child: Container(
        height: musicPlayerModel.mHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: musicPlayerModel.bgColor),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    width: 37,
                    height: 37,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            image: AssetImage(musicPlayerModel.thumbnailpath))),
                  ),
                  customSizedBox(),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: musicPlayerModel.songTitle,
                              fontSize: 11,
                              textColor: AppColors.whiteColor,
                            ),
                            CustomText(
                              text: musicPlayerModel.albumTitle,
                              fontSize: 9,
                              textColor: AppColors.whiteColor,
                            ),
                          ],
                        ),
                        
                        musicPlayerModel.isBluetooth ? Row(
                          children: [
                            SvgPicture.asset('assets/icons/dark_mode/bluetooth.svg', height: 15, width: 15,),
                            CustomText(text: musicPlayerModel.bluetoothName, fontSize: 9, textColor: AppColors.greenColor),
                          ],
                        ) : Container()
                      ],
                    ),
                  ),
                  customSizedBox(),
                  musicPlayerModel.isBluetooth ? SvgPicture.asset('assets/icons/dark_mode/bluetooth.svg', height: 29, width: 29,) : Icon(Icons.devices, color: AppColors.greenColor,),
                  Icon(Icons.pause, color: AppColors.whiteColor, size: 28,)
                ],
              ),
              LinearProgressIndicator(
                value: 0.4,
                valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFB2B2B2)),
                backgroundColor: const Color(0xFF702F3D),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
