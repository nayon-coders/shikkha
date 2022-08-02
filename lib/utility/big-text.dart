import 'package:flutter/material.dart';
import 'package:shikkha_new/utility/colors.dart';

class BigText extends StatelessWidget {
  String text;
  double? size;
  Color? color;
  BigText({required this.text, this.size = 16, this.color = appColor.black});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size,
          color: color
      ),
    );
  }
}