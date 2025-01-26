import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/screens/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'avenir', Typo: In word 'avenir'.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: AppRoutes().getRoutes(),
      initialRoute: AppRoutes.splash_page,
    );
  }
}


