import 'package:flutter/material.dart';
import 'package:alipro/shared/components/widgets/text.dart';

class DefaultButton extends StatelessWidget{
  var press;
  double height;
  double width;
  Color color;
  double radius;
  String? text;
  Color colorText;
  double size;
  FontWeight weight;
  DefaultButton({super.key, this.color = Colors.grey, this.weight = FontWeight.bold, this.size = 20,
    this.radius = 15, this.height = 50, required this.text, this.width = 70, this.colorText = Colors.white,this.press});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: press,
        child: DefaultText(
          title: text,
          color: colorText,
          size: size,
          weight: weight,
        ),
      ),
    );
  }
}

