import 'package:flutter/material.dart';

class AddAdress extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const AddAdress({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32), // مسافة تحت كل زرار
      child: SizedBox(
        width: 326,
        height: 59,
        child: OutlinedButton(
          onPressed: onPressed ?? () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color(0xFFB5B5B5)),
            foregroundColor: const Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xFF727272),
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
