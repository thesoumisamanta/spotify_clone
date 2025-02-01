import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/choose_artists.dart';
import 'package:spotify_clone/screens/choose_podcasts.dart';
import 'package:spotify_clone/screens/home_page.dart';
import 'package:spotify_clone/screens/start_page.dart';
import 'package:spotify_clone/screens/signup_page.dart';
import 'package:spotify_clone/screens/splash_screen_page.dart';

class AppRoutes {
  static const String splash_page = "/splash_page";
  static const String start_page = "/start_page";
  static const String signUp_page = "/signup_page";
  static const String choose_artists = "/choose_artists";
  static const String choose_podcasts = "/choose_podcasts";
  static const String home_page = "/home-page";

  Map<String, Widget Function(BuildContext)> getRoutes() => {
        splash_page: (context) => SplashScreenPage(),
        start_page: (context) => StartPage(),
        signUp_page: (context) => SignupPage(),
        choose_artists: (context) => ChooseArtists(),
        choose_podcasts: (context) => ChoosePodcasts(),
        home_page: (context) => HomePage(),
      };
}
