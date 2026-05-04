import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String image;
  final String label;

  const ItemCategory({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Theme.of(context).primaryColor),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xff676767),
            letterSpacing: 0.2,
          ),
        )
      ],
    );
  }
}