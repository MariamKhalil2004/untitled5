import 'package:flutter/material.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // REMOVED: The line 'Widget build(BuildContext context) {' and the
    // redundant comment above it, along with one extra closing brace.
    return Scaffold(
      backgroundColor: const Color(0xFFDD8560),
      body: Center(
        child:
        Row(
            mainAxisSize: MainAxisSize.min,
            children: [

              Image.asset(
                'assets/images/logo.jpg',
                height: 100,
                width: 100,
              ),
              const SizedBox(width: 8),
              const Text(
                  'Suits',
                  style: TextStyle(
                      fontSize: 128,
                      color: Colors.white,
                      fontFamily: "Waterfall"
                  )
              ),
            ]
        ),
      ),
    );
  } // The method ends here
}
