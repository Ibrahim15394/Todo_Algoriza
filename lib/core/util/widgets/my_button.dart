import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? background;
  final bool? isUpperCase;
  final double radius;
  final VoidCallback? onClick;
  final TextStyle style;

  const MyButton({Key? key,
    required this.text,
    this.width = double.infinity,
    this.height,
    this.background,
    this.isUpperCase,
    required this.onClick,
    required this.radius,
    required this.style,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: onClick,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}