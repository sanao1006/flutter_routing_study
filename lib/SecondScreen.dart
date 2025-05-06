import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Increment Screen")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(number + 1);
              },
              child: const Text("Increment"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(number - 1);
              },
              child: const Text("Decrement"),
            ),
          ],
        ),
      ),
    );
  }
}
