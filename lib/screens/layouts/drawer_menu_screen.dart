import 'package:flutter/material.dart';
import 'package:marakez/screens/registration_module/login_screen.dart';
import 'package:marakez/shared/constants.dart';
import 'package:marakez/shared/nav.dart';
import 'package:marakez/shared/widgets/drawer_menu_item.dart';

class DrawerMenuScreen extends StatelessWidget {
  const DrawerMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kDefaultColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // user profile image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Container(
                      height: 80,
                      width: 80,
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: const Image(
                          height: 70,
                          width: 70,
                          image: AssetImage('assets/images/image-2.png'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 60,
                  ),
                  // user name and district
                  Wrap(
                    direction: Axis.vertical,
                    children: const [
                      // user name
                      Text(
                        'Keroles Youssef',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      // district number
                      Text(
                        'District 5',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                    size: 35,
                  )
                ],
              ),
              SizedBox(
                height: height / 16,
              ),
              const DrawerMenuItem(
                title: 'Neighbours',
                icon: Icons.people_outline,
              ),
              SizedBox(
                height: height / 28,
              ),
              const DrawerMenuItem(
                title: 'Manage Properties',
                icon: Icons.home_outlined,
              ),
              SizedBox(
                height: height / 28,
              ),
              const DrawerMenuItem(
                title: 'Community Info',
                icon: Icons.info_outline,
              ),
              SizedBox(
                height: height / 28,
              ),
              const DrawerMenuItem(
                title: 'Invite to Marakez',
                icon: Icons.person_add_alt_outlined,
              ),
              SizedBox(
                height: height / 28,
              ),
              const DrawerMenuItem(
                title: 'Report Issue',
                icon: Icons.warning_amber_rounded,
              ),
              SizedBox(
                height: height / 28,
              ),
              const DrawerMenuItem(
                title: 'Support',
                icon: Icons.support_agent_outlined,
              ),
              SizedBox(
                height: height / 28,
              ),
              const DrawerMenuItem(
                title: 'Contact Us',
                icon: Icons.email_outlined,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () => navigateFinish(context, const LoginScreen()),
        child: Container(
          alignment: AlignmentDirectional.center,
          width: width,
          height: 60,
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6)),
          child: const Text(
            'Log out',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
