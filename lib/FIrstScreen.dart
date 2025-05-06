import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final newNumber = await Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => SecondScreen(number: _number)),
            );
            setState(() {
              if (newNumber != null) {
                _number = newNumber;
              }
            });
          },
          child: Text("$_number"),
        ),
      ),
    );
  }
}
