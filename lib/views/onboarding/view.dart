import 'package:flutter/material.dart';
import 'package:untitled5/core/logic/helper_methods.dart';
import 'package:untitled5/views/homepage/view.dart';
import 'package:untitled5/views/login/Login.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentView = 0;

  final list = [
    _Data(
      image: "onboarding0.jpg",
      title: "Welcome To Fashion",
      description:
          "Discover the latest trends and exclusive styles \nfrom our top designers",
    ),
    _Data(
      image: "onboarding1.jpg",
      title: "Explore & Shop",
      description:
          "Discover a wide range of fashion categories,\nbrowse new arrivals and shop your favourites",
    ),
    _Data(image: "onboarding0.jpg", title: "Hi, Shop Now", description: ""),
  ];


  void goToNextPage() {
    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/${list[currentView].image}',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (currentView != list.length - 1)
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: OutlinedButton(
                        onPressed: () {
                          currentView = list.length - 1;
                          setState(() {});
                          goToNextPage();

                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                  const Spacer(),

                  Text(
                    list[currentView].title,
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 18),

                  if (list[currentView].description != null &&
                      list[currentView].description!.isNotEmpty)
                    Text(
                      list[currentView].description!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),

                  const SizedBox(height: 18),

                  Row(
                    children: [
                      // Back Button
                      if (currentView != 0)
                        FloatingActionButton(
                          onPressed: () {
                            if (currentView > 0) {
                              currentView--;
                              setState(() {});
                            }
                          },
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: const CircleBorder(side: BorderSide()),
                          child: const Padding(
                            padding: EdgeInsetsDirectional.only(start: 8),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFFDD8560),
                            ),
                          ),
                        ),

                      const Spacer(),

                      ...List.generate(
                        list.length,
                        (index) => Padding(
                          padding: EdgeInsetsDirectional.only(
                            end: index != list.length - 1 ? 12 : 0,
                          ),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: index == currentView
                                ? const Color(0xFFDD8560)
                                : const Color(0xFFD9D9D9),
                          ),
                        ),
                      ),

                      const Spacer(),

                      // Next Button
                      FloatingActionButton(

                        onPressed: () {
                          if (currentView == list.length - 1) {
                            goToNextPage();
                          } else {
                            currentView++;
                            setState(() {});
                          }
                        },
                        backgroundColor: const Color(0xFFDD8560),
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Data {
  final String image, title;
  final String? description;

  _Data({required this.image, required this.title, this.description});
}
