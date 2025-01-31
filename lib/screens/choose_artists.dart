import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_circular_bg.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/custom_text_field.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/models/singers_model.dart';

class ChooseArtists extends StatelessWidget {
  final List<SingersModel> singers = [
    SingersModel(imgPath: "assets/images/singers/arijit.jpg", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/alka.png", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/arijit.jpg", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/asha.jpg", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/kishor.webp", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/lata.jpg", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/mohammed.jpg", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/shreya.jpg", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/sonu.avif", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/udit.webp", singerName: "Arijit Singh"),
    SingersModel(imgPath: "assets/images/singers/sunidhi.avif", singerName: "Arijit Singh"),
    
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlackColor,
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/dark_mode/Left.svg'),
                  CustomText(
                      text: 'Choose 3 or more artists you like.',
                      fontSize: 15,
                      textColor: AppColors.whiteColor),
                ],
              ),
              customSizedBox(mHeight: 20),
              SizedBox(
                  height: 40,
                  width: 350,
                  child: CustomTextField(
                    bgColor: AppColors.whiteColor,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                          'assets/icons/light_mode/Search_Solid.svg',
                          colorFilter: ColorFilter.mode(
                              AppColors.greyColor, BlendMode.srcIn)),
                    ),
                    hintText: 'Search',
                    hintTextColor: AppColors.blackColor,
                  )),
              customSizedBox(mHeight: 30),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 11,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CustomCircularBg(
                            imgPath: "assets/images/singers/arijit.jpg"),
                        customSizedBox(mHeight: 5),
                        CustomText(
                          text: 'Arijit Singh',
                          fontSize: 10,
                          textColor: AppColors.whiteColor,
                        ),
                      ],
                    );
                  },
                  itemCount: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
