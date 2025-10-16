import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputDataView extends StatefulWidget {
  const InputDataView({super.key});

  @override
  State<InputDataView> createState() => _InputDataViewState();
}

class _InputDataViewState extends State<InputDataView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA9A2E5),
        centerTitle: false,
        title: const Text("Calculator"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              "https://m.media-amazon.com/images/I/61BjUjLQ26L._AC_SL1500_.jpg",
              height: 300, width: 300, fit: BoxFit.fill,),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Your Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Your Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            /*TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter third value",
                border: OutlineInputBorder(),
              ),
            ),*/
            FilledButton(onPressed: () {}, child: Text("Calc")),
            const SizedBox(height: 8),

            CircleAvatar(radius: 25,
                backgroundImage: NetworkImage(
                  "https://m.media-amazon.com/images/I/61BjUjLQ26L._AC_SL1500_.jpg",))
          ],
        ),
      ),
    );
  }
}

