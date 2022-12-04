import 'package:flutter/material.dart';
import 'package:marakez/screens/registration_module/sign_up_step1_screen.dart';
import 'package:marakez/shared/constants.dart';
import 'package:marakez/shared/nav.dart';
import 'package:marakez/shared/widgets/custom_elevated_button.dart';
import 'package:marakez/shared/widgets/default_text_input.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController unitController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xffF3F4FB),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => navigateBack(context),
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          Text(
            'Unit and compound information',
            style: TextStyle(
                color: kDefaultColor,
                fontWeight: FontWeight.w600,
                fontSize: 24),
          ),
          SizedBox(
            height: height / 40,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: height / 30,
                  ),
                  DefaultTextInputField(
                    controller: unitController,
                    labelText: 'Select District',
                    prefix: const Icon(
                      Icons.home_outlined,
                      color: Colors.lightBlueAccent,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  DefaultTextInputField(
                    controller: unitController,
                    labelText: 'Select Community',
                    prefix: const Icon(
                      Icons.home_outlined,
                      color: Colors.lightBlueAccent,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  DefaultTextInputField(
                    controller: unitController,
                    labelText: 'Unit Number',
                    prefix: const Icon(
                      Icons.home_outlined,
                      color: Colors.lightBlueAccent,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    height: height / 25,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height / 20,
          ),
          CustomElevatedButton(
            onPressed: () => navigateTo(context, const SignUpStep1Screen()),
            buttonTittle: 'Proceed',
            height: 75,
            borderRadius: 6,
          ),
        ],
      ),
    );
  }
}
