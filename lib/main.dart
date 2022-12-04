import 'package:flutter/material.dart';
import 'package:marakez/screens/registration_module/login_screen.dart';
import 'package:marakez/shared/constants.dart';
import 'package:marakez/shared/pallete.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marakez',
      theme: ThemeData(
        primarySwatch: Palette.kDefaultSwatch,
      ),
      //For making app responsive
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        defaultName: MOBILE,
        defaultNameLandscape: MOBILE,
        breakpoints: [
          const ResponsiveBreakpoint.resize(
            480,
            name: MOBILE,
            scaleFactor: 0.85,
          ),
          const ResponsiveBreakpoint.autoScale(
            800,
            name: TABLET,
            scaleFactor: 0.9,
          ),
          const ResponsiveBreakpoint.resize(
            1000,
            name: DESKTOP,
          ),
          const ResponsiveBreakpoint.autoScale(
            2460,
            name: '4K',
          ),
        ],
      ),
      home: const LoginScreen(),
    );
  }
}
