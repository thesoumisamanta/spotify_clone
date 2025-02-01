import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/customs/custom_rounded_button.dart';
import 'package:spotify_clone/customs/custom_text.dart';
import 'package:spotify_clone/customs/ui_helpers.dart' as ui_helpers;
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/widgets/sign_up_page_widgets.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  int selectedIndex = 0;

  List<Widget> allPages = [];

  bool isPP1Checked = false;
  bool isPP2Checked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allPages = [
      signUpPageWidgetsOne(),
      signUpPageWidgetsTwo(),
      signUpPageWidgetsThree(),
      signUpPageWidgetsFour(onPP1Changed: (value) {
        setState(() {
          isPP1Checked = value ?? false;
        });
      }, onPP2Changed: (value) {
        setState(() {
          isPP2Checked = value ?? false;
        });
      }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.darkBlackColor,
        appBar: AppBar(
          backgroundColor: AppColors.darkBlackColor,
          leading: InkWell(
            onTap: () {
              if (selectedIndex > 0) {
                setState(() {
                  selectedIndex--;
                });
              } else {
                Navigator.pop(context);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: SvgPicture.asset(
                  "assets/icons/dark_mode/Left.svg",
                ),
              ),
            ),
          ),
          centerTitle: true,
          title: CustomText(
            text: "Create account",
            fontSize: 18,
            textColor: AppColors.whiteColor,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              allPages[selectedIndex],
              ui_helpers.customSizedBox(mHeight: 20),
              Padding(
                padding: EdgeInsets.only(top: selectedIndex < 3 ? 0 : 50),
                child: CustomRoundedButton(
                  fontSize: 15,
                  mWidth: selectedIndex < 3 ? 80 : 170,
                  text: selectedIndex < 3 ? 'Next' : 'Create an account',
                  bgColor: selectedIndex < 3
                      ? AppColors.greyColor
                      : AppColors.whiteColor,
                  onTap: () {
                    if (selectedIndex < 3) {
                      setState(() {
                        selectedIndex++;
                      });
                    } else {
                      Navigator.pushNamed(context, AppRoutes.choose_artists);
                    }
                  },
                ),
              )
            ],
          ),
        ));
  }
}
