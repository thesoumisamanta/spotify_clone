import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/models/music_player_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palette_generator/palette_generator.dart';

class CustomPlayersWidget extends StatefulWidget {
  final MusicPlayerModel musicPlayerModel;

  CustomPlayersWidget({
    super.key,
    required this.musicPlayerModel,
  });

  @override
  State<CustomPlayersWidget> createState() => _CustomPlayersWidgetState();
}

class _CustomPlayersWidgetState extends State<CustomPlayersWidget> {
  PaletteGenerator? paletteGenerator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDominantColor();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7, right: 7),
      child: Container(
        height: widget.musicPlayerModel.mHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: paletteGenerator?.dominantColor?.color.withOpacity(0.6) ??
              widget.musicPlayerModel.bgColor,
        ),
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
                            image: AssetImage(
                                widget.musicPlayerModel.thumbnailpath))),
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
                              text: widget.musicPlayerModel.songTitle,
                              fontSize: 11,
                              textColor: AppColors.whiteColor,
                            ),
                            CustomText(
                              text: widget.musicPlayerModel.albumTitle,
                              fontSize: 9,
                              textColor: AppColors.whiteColor,
                            ),
                          ],
                        ),
                        widget.musicPlayerModel.isBluetooth
                            ? Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/dark_mode/bluetooth.svg',
                                    height: 15,
                                    width: 15,
                                  ),
                                  CustomText(
                                      text:
                                          widget.musicPlayerModel.bluetoothName,
                                      fontSize: 9,
                                      textColor: AppColors.greenColor),
                                ],
                              )
                            : Container()
                      ],
                    ),
                  ),
                  customSizedBox(),
                  widget.musicPlayerModel.isBluetooth
                      ? SvgPicture.asset(
                          'assets/icons/dark_mode/bluetooth.svg',
                          height: 29,
                          width: 29,
                        )
                      : Icon(
                          Icons.devices,
                          color: AppColors.greenColor,
                        ),
                  Icon(
                    Icons.pause,
                    color: AppColors.whiteColor,
                    size: 28,
                  )
                ],
              ),
              LinearProgressIndicator(
                value: 0.4,
                valueColor: AlwaysStoppedAnimation<Color>(
                  (paletteGenerator?.dominantColor?.color ?? Colors.grey)
                      .withOpacity(0.8),
                ),
                backgroundColor:
                    (paletteGenerator?.dominantColor?.color ?? Colors.grey)
                        .withOpacity(0.3),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getDominantColor() async {
    final generator = await PaletteGenerator.fromImageProvider(
        AssetImage(widget.musicPlayerModel.thumbnailpath));
    if (mounted) {
      setState(() {
        paletteGenerator = generator;
      });
    }
  }
}
