
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../onboarding/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final int splashDurationSeconds = 2;

  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(Duration(seconds: splashDurationSeconds), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  OnBoardingView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDD8560),
      body: Center(
        child: BackInDown(
          duration: Duration(seconds: splashDurationSeconds),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/logo.jpg',
                height: 100,
                width: 100,
              ),
              SizedBox(width: 12),
              Text(
                'suits',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  fontFamily: "waterfall",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}