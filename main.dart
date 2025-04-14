import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Center(child: Dicsroller()),
        ),
      ),
    );
  }
}

class Dicsroller extends StatefulWidget {
  const Dicsroller({super.key});

  @override
  State<Dicsroller> createState() => _DicsrollerState();
}

class _DicsrollerState extends State<Dicsroller> {
  String pressed = "images/dice-1.png";

  @override
  Widget build(BuildContext context) {
    void onPressedButton() {
      setState(() {
        int randoomnumber = Random().nextInt(6) + 1;
        pressed = "images/dice-$randoomnumber.png";
        print("pressed");
      });
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(image: AssetImage(pressed), width: 100),
        SizedBox(height: 10),
        ElevatedButton.icon(
          onPressed: onPressedButton,
          // ignore: sort_child_properties_last
          label: const Text("Roll Dice"),
          icon: const Icon(Icons.casino),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            iconColor: Colors.grey,
            enableFeedback: false,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
        ),
      ],
    );
  }
}
