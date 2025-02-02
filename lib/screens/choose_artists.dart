import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_circular_bg.dart';
import 'package:spotify_clone/customs/custom_rounded_button.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/custom_text_field.dart';
import 'package:spotify_clone/customs/ui_helpers.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/models/cards_model.dart';

class ChooseArtists extends StatefulWidget {
  @override
  State<ChooseArtists> createState() => _ChooseArtistsState();
}

class _ChooseArtistsState extends State<ChooseArtists> {
  List<int> selectedSingers = [];
  final List<CardsModel> singers = [
    CardsModel(
        imgPath: "assets/images/singers/arijit.jpg",
        textName: "Arijit Singh"),
    CardsModel(
        imgPath: "assets/images/singers/alka.png", textName: "Alka Yagnik"),
    CardsModel(
        imgPath: "assets/images/singers/arijit.jpg",
        textName: "Arijit Singh"),
    CardsModel(
        imgPath: "assets/images/singers/asha.jpg", textName: "Asha Bhosle"),
    CardsModel(
        imgPath: "assets/images/singers/kishor.webp",
        textName: "Kishore Kumar"),
    CardsModel(
        imgPath: "assets/images/singers/lata.jpg",
        textName: "Lata Mangeshkar"),
    CardsModel(
        imgPath: "assets/images/singers/mohammed.jpg",
        textName: "Mohammed Rafi"),
    CardsModel(
        imgPath: "assets/images/singers/shreya.jpg",
        textName: "Shreya Ghoshal"),
    CardsModel(
        imgPath: "assets/images/singers/sonu.avif", textName: "Sonu Nigam"),
    CardsModel(
        imgPath: "assets/images/singers/udit.webp", textName: "Udit Narayan"),
    CardsModel(
        imgPath: "assets/images/singers/sunidhi.avif",
        textName: "Sunidhi Chauhan"),
    CardsModel(
        imgPath: "assets/images/singers/arijit.jpg",
        textName: "Arijit Singh"),
    CardsModel(
        imgPath: "assets/images/singers/asha.jpg", textName: "Asha Bhosle"),
    CardsModel(
        imgPath: "assets/images/singers/kishor.webp",
        textName: "Kishore Kumar"),
    CardsModel(
        imgPath: "assets/images/singers/lata.jpg",
        textName: "Lata Mangeshkar"),
    CardsModel(
        imgPath: "assets/images/singers/mohammed.jpg",
        textName: "Mohammed Rafi"),
    CardsModel(
        imgPath: "assets/images/singers/shreya.jpg",
        textName: "Shreya Ghoshal"),
    CardsModel(
        imgPath: "assets/images/singers/sonu.avif", textName: "Sonu Nigam"),
    CardsModel(
        imgPath: "assets/images/singers/udit.webp", textName: "Udit Narayan"),
    CardsModel(
        imgPath: "assets/images/singers/sunidhi.avif",
        textName: "Sunidhi Chauhan"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkBlackColor,
          leading: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: SvgPicture.asset('assets/icons/dark_mode/Left.svg')),
            ),
            onTap: () => Navigator.pop(context),
          ),
          centerTitle: true,
          title: CustomText(
              text: 'Choose 3 or more artists you like.',
              fontSize: 15,
              textColor: AppColors.whiteColor),
        ),
        backgroundColor: AppColors.darkBlackColor,
        body: Column(
          children: [
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
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (!selectedSingers.contains(index)) {
                              selectedSingers.add(index);
                            } else {
                              selectedSingers.remove(index);
                            }
                          });
                        },
                        child: Column(
                          children: [
                            CustomCircularBg(
                              imgPath: singers[index].imgPath,
                              isSelected: selectedSingers.contains(index),
                            ),
                            customSizedBox(mHeight: 5),
                            CustomText(
                              text: singers[index].textName,
                              fontSize: 10,
                              textColor: AppColors.whiteColor,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            stops: [0.1, 0.8],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              AppColors.darkBlackColor.withOpacity(0.5)
                            ])),
                    child: selectedSingers.length >= 3
                        ? Center(
                            child: Padding(
                            padding: const EdgeInsets.only(top: 150.0),
                            child: CustomRoundedButton(
                              mWidth: 80,
                              fontSize: 18,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.choose_podcasts);
                              },
                              text: 'Next',
                            ),
                          ))
                        : null,
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
