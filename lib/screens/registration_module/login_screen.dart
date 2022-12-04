import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marakez/cubits/auth_cubit/auth_cubit.dart';
import 'package:marakez/cubits/auth_cubit/auth_state.dart';
import 'package:marakez/screens/layouts/zoom_drawer_screen.dart';
import 'package:marakez/screens/registration_module/sign_up_screen.dart';
import 'package:marakez/shared/constants.dart';
import 'package:marakez/shared/nav.dart';
import 'package:marakez/shared/widgets/custom_elevated_button.dart';
import '../../shared/widgets/default_text_input.dart';
import '../../shared/widgets/forgetting_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController emailController = TextEditingController();
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: ListView(
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/launcher_ic.png',
                      ),
                      height: 350,
                      width: 350,
                    ),
                  ),
                  SizedBox(
                    height: height / 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        DefaultTextInputField(
                          controller: AuthCubit.get(context).loginEmail,
                          labelText: 'Email Address',
                          borderColor: Colors.grey,
                          prefix: const Icon(
                            CupertinoIcons.person,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: height / 30,
                        ),
                        DefaultTextInputField(
                          controller: AuthCubit.get(context).loginPassword,
                          labelText: 'Password',
                          isPassword: AuthCubit.get(context).loginPassIcon ==
                              Icons.visibility_sharp,
                          borderColor: Colors.grey,
                          prefix: const Icon(
                            CupertinoIcons.lock,
                            size: 35,
                          ),
                          suffix: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () =>
                                  AuthCubit.get(context).changePassVisibility(),
                              icon: Icon(
                                AuthCubit.get(context).loginPassIcon,
                                size: 35,
                              )),
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        Row(
                          children: [
                            ForgettingWidget(
                              title: 'Forget Username?',
                              onPressed: () {
                                //ToDo: navigating to forget userName screen
                              },
                            ),
                            const Spacer(),
                            ForgettingWidget(
                              title: 'Forget Password?',
                              onPressed: () {
                                //ToDo: navigating to forget password screen
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        CustomElevatedButton(
                          borderRadius: 6,
                          height: 75,
                          buttonTittle: 'Log in',
                          onPressed: () => navigateReplacementTo(
                              context, const ZoomDrawerScreen()),
                        ),
                        SizedBox(
                          height: height / 70,
                        ),
                        Text(
                          'Or',
                          style: TextStyle(
                            color: kDefaultColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: height / 70,
                        ),
                        CustomElevatedButton(
                          borderRadius: 6,
                          height: 75,
                          buttonTittle: 'Sign Up',
                          onPressed: () =>
                              navigateTo(context, const SignUpScreen()),
                        ),
                        SizedBox(
                          height: height / 60,
                        ),
                        CustomElevatedButton(
                          borderRadius: 6,
                          height: 75,
                          buttonTittle: 'Use Authentication Code',
                          onPressed: () {
                            //ToDo: implement Signup method
                          },
                        ),
                        SizedBox(
                          height: height / 70,
                        ),
                        InkWell(
                          onTap: () {
                            //ToDo: implement contact US
                          },
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                              color: kDefaultColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
