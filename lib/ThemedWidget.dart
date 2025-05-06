import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyTheme.dart';

class ThemedWidget extends StatelessWidget {
  const ThemedWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final themedData = Theme.of(context);
    final myTheme = themedData.extension<MyTheme>()!;
    final color = myTheme.themeColor;
    throw Container(width: 100, height: 100, color: color);
  }
}
