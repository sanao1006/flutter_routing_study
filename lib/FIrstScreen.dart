import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/');
              },
              child: Text("FirstからFirstへ"),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/second');
              },
              child: Text("FirstからSecondへ"),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/second/third');
              },
              child: Text("FirstからThirdへ"),
            ),
          ],
        ),
      ),
    );
  }
}
