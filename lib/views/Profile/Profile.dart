import 'package:flutter/material.dart';
import 'package:untitled5/views/Profile/Widgets/ProfileButton.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Profile'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Center(
              child: ClipOval(
                child: Image.network(
                  'https://tse3.mm.bing.net/th/id/OIP.UVTslAHlztsQoFK-9J8_AAHaHa?pid=Api&P=0&h=220',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Mariam Khalil',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 40),
           /* Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0Xffffffff),
              ),
              padding: EdgeInsets.all(16),

              child: Row(
                children: [
                  Icon(Icons.access_time_filled_sharp),
                  SizedBox(width: 16),
                  SizedBox(height: 16),
                  Text(
                    'Mariam Khalil',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),*/
            ProfileButton(
              title: 'Your Profile',
              icon: Icons.person,
            ),
            ProfileButton(
              title: 'My Order',
              icon: Icons.list_alt,
            ),ProfileButton(
              title: 'Payment Methods',
              icon: Icons.payment,
            ),ProfileButton(
              title: 'Wishlist',
              icon: Icons.favorite,
            ),
            ProfileButton(
              title: 'Setting',
              icon: Icons.settings,
            ),ProfileButton(
              title: 'Log Out',
              icon: Icons.logout,
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: const Color(0xff676767)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: const Color(0xff676767)),
            label: "Shopping_Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: const Color(0xff676767)),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: const Color(0xffDD8560)),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
