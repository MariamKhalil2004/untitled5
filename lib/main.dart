import 'package:flutter/material.dart';
import 'package:untitled5/views/MyWishlist/MyWishList.dart';
import 'package:untitled5/views/Profile/Profile.dart';
import 'package:untitled5/views/VerficationCode/VerficationCode.dart';
import 'package:untitled5/views/hello_world/view.dart';
import 'package:untitled5/views/login/Login.dart';
import 'package:untitled5/views/onboarding/view.dart';
import 'views/calculator/view.dart';
import 'views/calculator/inputdata.dart';
import 'package:untitled5/views/login/SignUp.dart';
import 'views/login/CreateNewPassword.dart';
import 'package:untitled5/views/Add_Address/AddAdress.dart';
import 'package:untitled5/views/Splash/view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFDD8560),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFDD8560),
        ),
        // Uncomment this block if you want custom input styles
        /*
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFFFFFFF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: Color(0xFFE5E7EB), // fixed hex value
            ),
          ),
        ),
        */
      ),
      home: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          MyWishListView(),
          OnBoardingView(),
          SplashView(),
          VerficationcodeView(),
          AddadressView(),
          ProfileView(),
          LoginView(),
          SignUpView(),
          CreateNewPasswordView(),
        ],
      ),
    ),
  );
}
