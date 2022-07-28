import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextInputType type;
  final String? validate;
  final String? textLabel;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  double radius = 0.0;
  bool isPassword = false;
  final TextStyle? style;
  final GestureTapCallback? onTap;


  DefaultFormField({
    Key? key,
    required this.controller,
    required this.type,
     this.validate,
    this.textLabel,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    required this.radius,
    required this.isPassword,
    this.style,
    this.onTap,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return validate;
        }
        return null;
      },
      keyboardType: type,
      obscureText: isPassword,
      style: style,
      onTap:onTap ,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: const Color(0xFFf9f9f9),
        filled: true,
        hintStyle: const TextStyle(
         color: Color(0xFFcfcfcf),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}