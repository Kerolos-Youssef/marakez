import 'package:flutter/material.dart';
import 'package:marakez/shared/constants.dart';

class CategoryItemWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final void Function()? onPressed;
  const CategoryItemWidget(
      {Key? key,
      required this.title,
      required this.isSelected,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          color: isSelected ? kDefaultColor : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
