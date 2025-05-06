import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyTheme.dart';

class ThemedWidget extends StatelessWidget {
  const ThemedWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final myTheme =Theme.of(context).extension<MyTheme>()!;
    final color = myTheme.themeColor;
    return Container(width: 100, height: 100, color: color);
  }
}
