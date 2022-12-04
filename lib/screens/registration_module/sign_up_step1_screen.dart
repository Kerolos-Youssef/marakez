import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marakez/shared/constants.dart';
import 'package:marakez/shared/nav.dart';
import 'package:marakez/shared/widgets/sign_up_type_item.dart';

class SignUpStep1Screen extends StatelessWidget {
  const SignUpStep1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        children: [
          Center(
            child: Text(
              'Please choose one of the following',
              style: TextStyle(
                  color: kDefaultColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
          ),
          SizedBox(
            height: height / 20,
          ),
          SignUpTypeItem(
            title: 'Owner',
            description: 'I am the owner of this unit',
            onPressed: () {},
          ),
          SizedBox(
            height: height / 35,
          ),
          SignUpTypeItem(
            title: 'Resident',
            description: 'I live in this unit',
            onPressed: () {},
          ),
          SizedBox(
            height: height / 35,
          ),
          SignUpTypeItem(
            title: 'Tenant',
            description: 'I rent this unit',
            onPressed: () {},
          ),
          SizedBox(
            height: height / 35,
          ),
          SignUpTypeItem(
            title: 'Other',
            description: 'Other',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
