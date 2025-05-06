import 'package:flutter/material.dart';

class MyTheme extends ThemeExtension<MyTheme> {
  const MyTheme({required this.themeColor});

  final Color? themeColor;

  @override
  ThemeExtension<MyTheme> copyWith({Color? themeColor}) {
    return MyTheme(themeColor: themeColor ?? this.themeColor);
  }

  @override
  ThemeExtension<MyTheme> lerp(
    covariant ThemeExtension<MyTheme>? other,
    double t,
  ) {
    if (other is! MyTheme) {
      return this;
    }
    return MyTheme(
      themeColor: Color.lerp(themeColor, other.themeColor, t),
    );
  }
}
