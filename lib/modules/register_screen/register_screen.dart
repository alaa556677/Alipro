import 'package:alipro/modules/activation_code/activation_code.dart';
import 'package:alipro/shared/components/component.dart';
import 'package:alipro/shared/cubit/login/login_cubit.dart';
import 'package:alipro/shared/cubit/register/register_cubit.dart';
import 'package:alipro/shared/cubit/register/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterScreen extends StatelessWidget {
  static String id = 'RegisterScreen';
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  var formKey = GlobalKey<FormState>();
  static String? phoneNumber;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
      builder: (context, state) {
        var registerCubit = RegisterCubit.get(context);
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: defaultAppBar(),
            ),
            body: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        defaultText(
                          title: 'الاسم',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        defaultTextFormField(
                          type: TextInputType.text,
                          controller: nameController,
                          hint: 'ادخل الاسم',
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'يجب كتابة الاسم';
                            }
                            return null;
                          },
                          prefix: Icons.person,
                          colorPrefix: Colors.grey,
                          radius: 15,
                          colorInputText: Colors.black,
                          colorHint: Colors.grey
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        defaultText(
                          title: 'رقم الموبايل',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        defaultPhoneNumber(
                          number: number,
                          controller: phoneController,
                            vertical: 9,
                            horizontal: 10
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        defaultText(
                          title: 'رقم البطاقة',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        defaultTextFormField(
                          type: TextInputType.number,
                          controller: idController,
                          hint: 'ادخل رقم البطاقة',
                          prefix: Icons.account_circle_rounded,
                          radius: 15,
                          colorHint: Colors.grey,
                          colorInputText: Colors.black,
                          colorPrefix: Colors.grey,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        defaultText(
                          title: 'الرقم السري',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        defaultTextFormField(
                          type: TextInputType.text,
                          controller: passwordController,
                          hint: 'ادخل الرقم السري',
                          prefix: Icons.lock,
                          suffix: registerCubit.isPass
                              ? Icons.visibility_off
                              : Icons.visibility,
                          isPass: registerCubit.isPass,
                          tap: () {
                            registerCubit.changeRegisterPassword();
                          },
                          colorPrefix: Colors.grey,
                          colorHint: Colors.grey,
                          colorInputText: Colors.black,
                          colorSuffix: Colors.grey,
                          radius: 15,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        defaultText(
                          title: 'إعادة كتابة الرقم السري',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        defaultTextFormField(
                          type: TextInputType.text,
                          controller: passwordController,
                          hint: 'ادخل الرقم السري',
                          prefix: Icons.lock,
                          suffix: registerCubit.isPass
                              ? Icons.visibility_off
                              : Icons.visibility,
                          isPass: registerCubit.isPass,
                          tap: () {
                            registerCubit.changeRegisterPassword();
                          },
                          colorPrefix: Colors.grey,
                          colorHint: Colors.grey,
                          colorInputText: Colors.black,
                          colorSuffix: Colors.grey,
                          radius: 15,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: defaultButton(
                              text: 'تسجيل',
                              width: 180,
                              radius: 25,
                              size: 20,
                              color: Colors.grey,
                              press: () {
                                phoneNumber = phoneController.text;
                                navigateAndFinish(context, ActivationScreen.id);
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
