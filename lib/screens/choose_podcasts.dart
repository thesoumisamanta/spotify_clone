import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_circular_bg.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/custom_text_field.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/models/singers_model.dart';

class ChoosePodcasts extends StatelessWidget {
  List<int> selectedSingers = [];
  final List<SingersModel> singers = [
    SingersModel(
        imgPath: "assets/images/singers/arijit.jpg",
        singerName: "Arijit Singh"),
    SingersModel(
        imgPath: "assets/images/singers/alka.png", singerName: "Alka Yagnik"),
    SingersModel(
        imgPath: "assets/images/singers/arijit.jpg",
        singerName: "Arijit Singh"),
    SingersModel(
        imgPath: "assets/images/singers/asha.jpg", singerName: "Asha Bhosle"),
    SingersModel(
        imgPath: "assets/images/singers/kishor.webp",
        singerName: "Kishore Kumar"),
    SingersModel(
        imgPath: "assets/images/singers/lata.jpg",
        singerName: "Lata Mangeshkar"),
    SingersModel(
        imgPath: "assets/images/singers/mohammed.jpg",
        singerName: "Mohammed Rafi"),
    SingersModel(
        imgPath: "assets/images/singers/shreya.jpg",
        singerName: "Shreya Ghoshal"),
    SingersModel(
        imgPath: "assets/images/singers/sonu.avif", singerName: "Sonu Nigam"),
    SingersModel(
        imgPath: "assets/images/singers/udit.webp", singerName: "Udit Narayan"),
    SingersModel(
        imgPath: "assets/images/singers/sunidhi.avif",
        singerName: "Sunidhi Chauhan"),
    SingersModel(
        imgPath: "assets/images/singers/arijit.jpg",
        singerName: "Arijit Singh"),
    SingersModel(
        imgPath: "assets/images/singers/asha.jpg", singerName: "Asha Bhosle"),
    SingersModel(
        imgPath: "assets/images/singers/kishor.webp",
        singerName: "Kishore Kumar"),
    SingersModel(
        imgPath: "assets/images/singers/lata.jpg",
        singerName: "Lata Mangeshkar"),
    SingersModel(
        imgPath: "assets/images/singers/mohammed.jpg",
        singerName: "Mohammed Rafi"),
    SingersModel(
        imgPath: "assets/images/singers/shreya.jpg",
        singerName: "Shreya Ghoshal"),
    SingersModel(
        imgPath: "assets/images/singers/sonu.avif", singerName: "Sonu Nigam"),
    SingersModel(
        imgPath: "assets/images/singers/udit.webp", singerName: "Udit Narayan"),
    SingersModel(
        imgPath: "assets/images/singers/sunidhi.avif",
        singerName: "Sunidhi Chauhan"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlackColor,
        body: Column(
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
              child: Stack(children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 11,
                    childAspectRatio: 9 / 10,
                  ),
                  itemCount: singers.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        if(!selectedSingers.contains(index) && selectedSingers.length < 3){}
                      },
                      child: Column(
                        children: [
                          CustomCircularBg(imgPath: singers[index].imgPath),
                          customSizedBox(mHeight: 5),
                          CustomText(
                            text: singers[index].singerName,
                            fontSize: 10,
                            textColor: AppColors.whiteColor,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            stops: [0.1, 0.8],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7)
                            ])),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
