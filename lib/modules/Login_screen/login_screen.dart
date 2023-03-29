import 'package:alipro/layouts/home_layout/home_layout.dart';
import 'package:alipro/modules/register_screen/register_screen.dart';
import 'package:alipro/shared/components/component.dart';
import 'package:alipro/shared/cubit/login/login_cubit.dart';
import 'package:alipro/shared/cubit/login/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../shared/components/constants.dart';

class LoginScreen extends StatelessWidget{
  static String id = 'LoginScreen';
  var formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  @override
  Widget build (BuildContext context){
    return BlocConsumer <LoginCubit,LoginStates> (
      builder: (context,state){
        var loginCubit = LoginCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: defaultAppBar(),
          ),
          body: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultText(
                        title: 'الاسم',
                      ),
                      const SizedBox(height: 10,),
                      defaultTextFormField(
                        type: TextInputType.text,
                        controller: nameController,
                        hint: 'ادخل الاسم',
                        validate: (value){
                          if(value.isEmpty){
                            return 'يجب كتابة الاسم';
                          }
                          return null;
                        },
                        prefix: Icons.person,
                        colorInputText: Colors.black,
                        colorBorderFocus: Colors.red,
                        colorPrefix: Colors.grey,
                        colorHint: Colors.grey,
                        radius: 15,
                        containerHeight: 50
                      ),
                      const SizedBox(height: 20,),
                      defaultText(
                        title: 'رقم الموبايل',
                      ),
                      const SizedBox(height: 10,),
                      defaultPhoneNumber(
                        controller: phoneController,
                        number: number,
                        vertical: 9,
                        horizontal: 10
                      ),
                      const SizedBox(height: 60,),
                      Center(
                        child: defaultButton(
                          text: 'موافق',
                          width: 180,
                          radius: 25,
                          size: 20,
                          color: Colors.grey,
                          press: (){},
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          defaultText(
                            title: 'لا تمتلك حساب ؟',
                            size: 20
                          ),
                          const SizedBox(width: 10,),
                          defaultTextButton(
                            text: 'سجل الان',
                            size: 20,
                            color: Colors.red,
                            press: (){
                              navigateTo(context, RegisterScreen.id);
                            },
                            textLine: TextDecoration.underline
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      listener: (context,state){}
    );
  }
}

