import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:marakez/screens/layouts/drawer_menu_screen.dart';
import 'package:marakez/screens/layouts/home_layout_screen.dart';
import 'package:marakez/shared/constants.dart';

class ZoomDrawerScreen extends StatelessWidget {
  const ZoomDrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ZoomDrawer(
          style: DrawerStyle.defaultStyle,
          angle: 0,
          slideWidth: MediaQuery.of(context).size.width / 1.3,
          mainScreenTapClose: true,
          menuBackgroundColor: kDefaultColor,
          menuScreen: const DrawerMenuScreen(),
          mainScreen: const HomeLayoutScreen(),
        ),
      );
}
