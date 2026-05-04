import 'package:flutter/material.dart';
import '../../core/ui/appbar.dart';
import '../../core/ui/navigationbar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile",),
      body: ListView(
        padding: EdgeInsets.all(19),
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/photo_2026-05-04_02-45-03.jpg"),
            ),
          ),
          SizedBox(height: 14),
          Center(
            child: Text(
              "Mariam Khalil",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16),
            height: 53,
            width: 322,
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 18),
                Text(
                  "Your profile",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16),
            height: 53,
            width: 322,
            child: Row(
              children: [
                Icon(Icons.list_alt),
                SizedBox(width: 18),
                Text(
                  "My Order",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16),
            height: 53,
            width: 322,
            child: Row(
              children: [
                Icon(Icons.payment),
                SizedBox(width: 18),
                Text(
                  "Payment Methods",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16),
            height: 53,
            width: 322,
            child: Row(
              children: [
                Icon(Icons.favorite),
                SizedBox(width: 18),
                Text(
                  "Wishlist",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16),
            height: 53,
            width: 322,
            child: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 18),
                Text(
                  "Setting",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16),
            height: 53,
            width: 322,
            child: Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 18),
                Text(
                  "Log out",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 1),
    );
  }
}