import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget{
  String? hint;
  var validate;
  bool isPass;
  TextInputType? type;
  TextEditingController? controller;
  double radius;
  Color? colorHint;
  Color colorBorderEnabled;
  Color colorBorderFocus;
  Color colorSuffix;
  Color colorPrefix;
  Color colorInputText;
  Color colorContainer;
  IconData? suffix;
  IconData? prefix;
  double widthBorder;
  double? containerWidth;
  double? containerHeight;
  double? letterSpace;
  TextAlign align;
  var tap;
  double horizontal;
  double vertical;

  DefaultTextFormField({
    super.key,
    this.vertical = 0,this.horizontal = 0,this.controller,this.align = TextAlign.start,this.colorBorderEnabled= Colors.white,
    this.colorBorderFocus = Colors.white,this.colorContainer = Colors.white,this.colorHint,this.colorInputText = Colors.white,
    this.colorPrefix = Colors.white,this.colorSuffix = Colors.white,this.containerHeight,this.containerWidth,this.hint,
    this.isPass = false, this.letterSpace,this.prefix,this.radius = 0,this.suffix,this.tap,this.type,this.validate,
    this.widthBorder = 1.5});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: suffix != null ? GestureDetector(
              onTap: tap,
              child: Icon(
                suffix   ,
                color: colorSuffix,
              ),
            ) : null,
            prefixIcon: prefix != null ? Icon(
              prefix,
              color: colorPrefix,
            ): null,
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: colorBorderEnabled, width: widthBorder),
              borderRadius: BorderRadius.circular(radius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorBorderFocus, width: widthBorder),
              borderRadius: BorderRadius.circular(radius),
            ),
            hintText: hint,
            hintStyle: TextStyle(
              color: colorHint,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical )
        ),
        textAlign: align,
        style: TextStyle(
          color: colorInputText,
          letterSpacing: letterSpace,
        ),
        validator: validate,
        obscureText: isPass,
        keyboardType: type,
        controller: controller,
      ),
    );
  }
}
