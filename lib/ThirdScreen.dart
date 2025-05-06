import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Screen")),
      body: Center(
        child: Column(
          children: [ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("戻る"))],
        ),
      ),
    );
  }
}
