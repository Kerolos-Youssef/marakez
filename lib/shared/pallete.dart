import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kDefaultSwatch = MaterialColor(
    0xff252855, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff21244d), //10%
      100: Color(0xff1e2044), //20%
      200: Color(0xff1a1c3b), //30%
      300: Color(0xff161833), //40%
      400: Color(0xff13142b), //50%
      500: Color(0xff0f1022), //60%
      600: Color(0xff0b0c19), //70%
      700: Color(0xff070811), //80%
      800: Color(0xff040408), //90%
      900: Color(0xff000000), //100%
    },
  );
}
