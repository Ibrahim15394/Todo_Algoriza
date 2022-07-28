import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 2.0,
      width: double.infinity,
      color:  Color(0xFFf2f2f2),

    );
  }
}
