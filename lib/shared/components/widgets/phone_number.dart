import 'package:alipro/shared/cubit/login/login_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class DefaultPhoneNumber extends StatelessWidget{
  TextEditingController? controller;
  PhoneNumber? number;
  double height;
  double horizontal;
  double vertical;
  BuildContext context;
  DefaultPhoneNumber({super.key,this.height = 50 ,this.controller,this.horizontal = 0,this.number,this.vertical=0, required this.context});
  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = LoginCubit();
    return Container(
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
                  )
              ),
            ),
            // Positioned(
            //     right: 105,
            //     left: null,
            //     top: 8,
            //     bottom: 8,
            //     child: Container(
            //       height: 35,
            //       width: 1,
            //       color: Colors.black,
            //     )
            // ),
          ],
        ),
      ),
    );
  }
}
