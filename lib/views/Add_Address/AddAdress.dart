import 'package:flutter/material.dart';
import 'package:untitled5/views/Add_Address/Widgets/AdressButton.dart';

class AddadressView extends StatelessWidget {
  const AddadressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Add Address'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const AddAdress(text: 'Title'),
            const AddAdress(text: 'Address'),
            const AddAdress(text: 'Building No'),
            const AddAdress(text: 'Floor No'),
            const AddAdress(text: 'Apartment No'),
            const SizedBox(height: 128),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFFDD8560), // اللون
                fixedSize: const Size(312, 44), // العرض والارتفاع
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // الزوايا
                ),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.white, // لون النص
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



