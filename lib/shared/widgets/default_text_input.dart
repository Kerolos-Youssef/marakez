import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class DefaultTextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final TextInputType inputType;
  // final double radius;
  final String? Function(String?)? validation;
  final bool isPassword;
  final Color fillColor;
  final Color? hintColor;
  final Widget? prefix;
  final Widget? suffix;
  final int? minLines;
  final void Function()? onTap;
  final Color borderColor;
  final TextStyle? textStyle;
  final TextStyle? labelTextStyle;
  final List<TextInputFormatter>? formats;
  const DefaultTextInputField({
    Key? key,
    required this.controller,
    this.hintText,
    this.inputType = TextInputType.text,
    // this.radius = 0,
    this.validation,
    this.isPassword = false,
    this.formats,
    this.fillColor = Colors.white,
    this.prefix,
    this.suffix,
    this.hintColor,
    this.onTap,
    this.minLines = 1,
    this.borderColor = const Color(0xFFE3E9EB),
    this.textStyle,
    this.labelText,
    this.labelTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return TextFormField(
      controller: controller,
      style: textStyle ?? TextStyle(fontSize: width / 22, color: Colors.grey),
      keyboardType: inputType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validation,
      obscureText: isPassword,
      inputFormatters: formats,
      onTap: onTap,
      maxLines: minLines,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        hintText: hintText,
        labelText: labelText,
        labelStyle: labelTextStyle,
        hintStyle: TextStyle(color: hintColor),
        prefixIcon: prefix,
        suffixIcon: suffix,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kDefaultColor,
          ),
          // borderRadius: BorderRadius.all(
          //   Radius.circular(radius != 0 ? radius : width / 5),
          // ),
        ),
        border: UnderlineInputBorder(
          // borderRadius: BorderRadius.all(
          //   Radius.circular(radius != 0 ? radius : width / 5),
          // ),
          borderSide: BorderSide(
            color: kDefaultColor,
          ),
        ),
        contentPadding: EdgeInsets.zero,
        floatingLabelStyle: TextStyle(color: kDefaultColor),
      ),
    );
  }
}
