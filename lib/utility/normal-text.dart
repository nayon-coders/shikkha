import 'package:flutter/cupertino.dart';
import 'colors.dart';
class MediunText extends StatelessWidget {
  String text;
  double? size;
  Color ? color;
  TextAlign ? textAlign;
  MediunText({required this.text, this.size = 10, this.color = appColor.black, this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: textAlign,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: size,
          color: color
      ),
    );
  }
}