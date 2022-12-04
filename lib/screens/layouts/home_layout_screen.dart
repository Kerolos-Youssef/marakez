import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:marakez/cubits/app_cubit/app_cubit.dart';
import 'package:marakez/cubits/app_cubit/app_state.dart';
import 'package:marakez/shared/constants.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(0xffF3F4FB),
            appBar: AppBar(
              title: Text(
                AppCubit.get(context)
                    .appBarTitles[AppCubit.get(context).currentIndex],
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              toolbarHeight: 80,
              elevation: 0.0,
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: IconButton(
                onPressed: () => ZoomDrawer.of(context)!.toggle(),
                icon: Icon(
                  Icons.dehaze,
                  color: kDefaultColor,
                  size: 35,
                ),
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 80,
              child: BottomNavigationBar(
                unselectedFontSize: 20,
                selectedFontSize: 20,
                iconSize: 35,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedItemColor: kDefaultColor,
                unselectedItemColor: Colors.grey,
                currentIndex: AppCubit.get(context).currentIndex,
                onTap: (index) =>
                    AppCubit.get(context).changeTabBarItem(index: index),
                items: AppCubit.get(context).bottomBarItems,
              ),
            ),
            body: AppCubit.get(context)
                .homeScreens[AppCubit.get(context).currentIndex],
          );
        },
      ),
    );
  }
}
