import 'package:alipro/shared/cubit/login/login_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

// text form field
Widget defaultTextFormField({
  String? hint,
  var validate,
  bool isPass = false,
  TextInputType? type,
  TextEditingController? controller,
  double radius = 0,
  Color? colorHint,
  Color colorBorderEnabled = Colors.white,
  Color colorBorderFocus = Colors.white,
  Color colorSuffix = Colors.white,
  Color colorPrefix = Colors.white,
  Color colorInputText = Colors.white,
  Color colorContainer = Colors.white,
  IconData? suffix,
  IconData? prefix,
  double widthBorder = 1.5,
  double? containerWidth,
  double? containerHeight,
  double? letterSpace,
  TextAlign align = TextAlign.start,
  var tap,
  double horizontal = 0 ,
  double vertical = 0 ,
}) => Container(
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

// text
Widget defaultText({
  String? title,
  double size = 15,
  FontWeight weight = FontWeight.w700,
  Color color = Colors.grey,
  String? font,
  TextAlign? align,
  TextDecoration? textLine,
}) =>
    Text(
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

// Button
Widget defaultButton({
  var press,
  double height = 50,
  double width = 70,
  Color color = Colors.grey,
  double radius = 15,
  String? text,
  Color colorText = Colors.white,
  double size = 20,
  FontWeight weight = FontWeight.bold,
}) => Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: press,
        child: defaultText(
          title: text,
          color: colorText,
          size: size,
          weight: weight,
        ),
      ),
    );

// app bar
Widget defaultAppBar() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        defaultText(
          title: "nameProject".tr().toString(),
          color: Colors.red,
          size: 30,
          weight: FontWeight.bold,
          font: 'textFont',
        ),
        const SizedBox(
          width: 10,
        ),
        const Image(
          image: AssetImage('assets/images/logo.png'),
          width: 30,
          height: 30,
        ),
      ],
    );

// phone number
Widget defaultPhoneNumber({
  TextEditingController? controller,
  PhoneNumber? number,
  double height = 50,
  double horizontal = 0,
  double vertical = 0,
}) =>
    Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            InternationalPhoneNumberInput(
              onInputChanged: (value) {},
              textFieldController: controller,
              validator: (value) {
                if (value!.isEmpty) {
                  return  "validatePhone".tr().toString();
                }
                return null;
              },
              formatInput: false,
              initialValue: number,
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              cursorColor: Colors.black,
              inputDecoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
                  border: InputBorder.none,
                  hintText: "hintPhone".tr().toString(),
                  hintStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  )),

            ),
            Positioned(
                right:105,
                top: 8,
                bottom: 8,
                child: Container(
                  height: 35,
                  width: 1,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );

// text button
Widget defaultTextButton({
  double size = 15,
  String? text,
  Color color = Colors.blue,
  var press,
  FontWeight weight = FontWeight.w500,
  TextDecoration? textLine,
}) =>
    TextButton(
      onPressed: press,
      child: defaultText(
        color: color,
        size: size,
        title: text,
        weight: weight,
        textLine: textLine,
      ),
    );

navigateTo(context, route) => Navigator.pushNamed(context, route);

navigateAndFinish(context, route) =>
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
