import 'package:flutter/material.dart';

import 'package:untitled5/views/homepage/view.dart';
import 'package:untitled5/views/Profile/Profile.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavBar({super.key, required this.currentIndex});

  void _onItemTapped(BuildContext context, int index) {
    if (index == currentIndex) return;

    Widget screen;

    switch (index) {
      case 0:
        screen =  HomePageView();
        break;
      case 1:
        screen = const ProfileView();
        break;
      default:
        screen =  HomePageView();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onItemTapped(context, index),

      selectedItemColor: const Color(0xffDD8560), // 🟠 active
      unselectedItemColor: const Color(0xff676767), // ⚫ inactive

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}