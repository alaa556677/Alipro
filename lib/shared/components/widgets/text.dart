import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget{
  String? title;
  double size;
  FontWeight weight;
  Color color;
  String? font;
  TextAlign? align;
  TextDecoration? textLine;

  DefaultText({super.key,this.size = 15, this.weight = FontWeight.w700, this.align,this.textLine,
    this.title,this.color = Colors.grey, this.font});
  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      style: TextStyle(
        decoration: textLine,
        fontSize: size,
        fontWeight: weight,
        color: color,
        fontFamily: font,
      ),
      textAlign: align,
    );
  }
}


