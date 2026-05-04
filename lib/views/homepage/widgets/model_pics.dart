import 'package:flutter/material.dart';

class ModelPics extends StatelessWidget {
  final String image;

  const ModelPics({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}