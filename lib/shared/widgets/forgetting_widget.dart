import 'package:flutter/material.dart';

class ForgettingWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const ForgettingWidget(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 20,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
