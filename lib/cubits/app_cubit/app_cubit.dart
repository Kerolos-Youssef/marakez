import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marakez/cubits/app_cubit/app_state.dart';
import 'package:marakez/screens/home_layout_screens/discover_screen.dart';
import 'package:marakez/screens/home_layout_screens/notifications_screen.dart';
import 'package:marakez/screens/home_layout_screens/services_screen.dart';
import 'package:marakez/screens/home_layout_screens/shop_screen.dart';
import 'package:marakez/screens/home_layout_screens/timeline_screen.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  void changeTabBarItem({required int index}) {
    currentIndex = index;
    emit(ChangeTabBarState());
  }

  List<BottomNavigationBarItem> bottomBarItems = const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home_outlined,
      ),
      label: 'Timeline',
    ),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.access_time_outlined,
        ),
        label: 'Services'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_cart_outlined,
        ),
        label: 'Shop'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.location_on_outlined,
        ),
        label: 'Discover'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications_none_outlined,
        ),
        label: 'Notifications'),
  ];
  List<String> appBarTitles = const [
    'Timeline',
    'Services',
    'Shop',
    'Discover',
    'Notifications',
  ];
  List<Widget> homeScreens = const [
    TimeLineScreen(),
    ServicesScreen(),
    ShopScreen(),
    DiscoverScreen(),
    NotificationsScreen(),
  ];
}
