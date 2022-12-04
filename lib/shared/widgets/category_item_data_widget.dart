import 'package:flutter/material.dart';
import 'package:marakez/shared/constants.dart';
class CategoryItemData extends StatelessWidget {
  final String title;
  final String image;
  const CategoryItemData({Key? key,required this.title,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Image(
            image: AssetImage(
              image,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Text(
            title,
            style: TextStyle(
                color: kDefaultColor,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          )
        ],
      ),
    );
  }
}
