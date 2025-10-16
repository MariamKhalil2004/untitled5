import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String title;
  final IconData icon;
  //final VoidCallback onPressed;

  const ProfileButton({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffffffff),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            //Icon(icon as IconData?),
            Icon(icon, color: Color(0xffDD8560)),
            SizedBox(width: 16),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
