import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? color;
  final double borderRadius;
  final double? height;
  final double? btnWidth;
  final String buttonTittle;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.buttonTittle,
    this.color = const Color(0xff252855),
    this.borderRadius = 0,
    this.height = 40,
    this.btnWidth,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: btnWidth == null ? double.infinity : btnWidth,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color!),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius != 0 ? borderRadius : width / 5),
              ),
            ),
          ),
        ),
        child: Text(
          buttonTittle,
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
