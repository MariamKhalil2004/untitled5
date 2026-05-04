import 'package:flutter/material.dart';

class ClothesCategory extends StatelessWidget {
  final String text;
  final bool isSelcted;
  final VoidCallback onTap;
  const ClothesCategory({super.key, required this.text, required this.isSelcted, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        child: Text(
          text,
          style: TextStyle(color: isSelcted ? Colors.white : null),
        ),
        decoration: BoxDecoration(
          color: isSelcted ? Theme.of(context).primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(20),
          //color: Colors.white,
        ),
      ),
    );
  }
}