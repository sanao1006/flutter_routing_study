import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/second');
              },
              child: const Text("SecondからSecondへ"),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/second/third');
              },
              child: const Text("SecondからThirdへ"),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              child: const Text("戻る"),
            ),
          ],
        ),
      ),
    );
  }
}
