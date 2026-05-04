import 'package:flutter/material.dart';
import 'package:untitled5/views/Profile/Profile.dart';
import 'package:untitled5/views/homepage/view.dart';
import 'package:untitled5/views/login/Login.dart';
import 'package:untitled5/views/onboarding/view.dart';
import 'core/logic/helper_methods.dart';
import 'package:untitled5/views/Splash/view.dart';
import 'package:untitled5/views/homepage/view.dart';
void main() {
  runApp(
    MaterialApp(
      navigatorKey: navigatorKey ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFDD8560),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFDD8560),
        ),

      ),
      home: PageView(
        children:  [
          SplashView(),
          OnBoardingView(),
          LoginView(),
          HomePageView(),
          ProfileView(),
        ],
      ),
    ),
  );
}
