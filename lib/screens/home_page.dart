import 'package:flutter/material.dart';
import 'package:spotify_clone/customs/custom_rounded_button.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/widgets/start_page_widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlackColor,
      body: Center(
        child: Stack(
          children: [
            Image.asset('assets/images/others/background.png'),
            Container(
              height: double.infinity,
              width: double.infinity,
            ),
            startPageWidgets(context)
          ],
        ),
      ),
    );
  }
}
