import 'package:flutter/material.dart';
import 'package:alipro/shared/components/widgets/text.dart';

class DefaultTextButton extends StatelessWidget{
  double size;
  String? text;
  Color color;
  var press;
  FontWeight weight;
  TextDecoration? textLine;
  DefaultTextButton({super.key, this.press, required this.text, this.size = 15, this.weight = FontWeight.w500,
    this.color = Colors.blue, this.textLine});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: DefaultText(
        color: color,
        size: size,
        title: text,
        weight: weight,
        textLine: textLine,
      ),
    );
  }
}
