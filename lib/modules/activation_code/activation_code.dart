import 'package:alipro/modules/register_screen/register_screen.dart';
import 'package:alipro/shared/components/component.dart';
import 'package:alipro/shared/components/widgets/appbar.dart';
import 'package:alipro/shared/components/widgets/button.dart';
import 'package:alipro/shared/components/widgets/text.dart';
import 'package:alipro/shared/components/widgets/text_button.dart';
import 'package:alipro/shared/components/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

import '../../layouts/home_layout/home_layout.dart';

class ActivationScreen extends StatelessWidget{
  static String id = 'ActivationScreen';
  var formKey = GlobalKey <FormState> ();

  ActivationScreen({super.key});
  @override
  Widget build (BuildContext context){
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: DefaultAppbar(),
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
                    DefaultText(
                      title: 'لقد ارسلنا اليك رسالة نصية تحتوى على الكود',
                      size: 20,
                      align: TextAlign.start
                    ),
                    const SizedBox(height: 10,),
                    DefaultText(
                      title: RegisterScreen.phoneNumber ?? 'No Number yet',
                      color: Colors.black,
                      size: 22,
                    ),
                    const SizedBox(height: 5,),
                    DefaultTextButton(
                      text: 'تعديل',
                      color: Colors.red,
                      press: (){
                        navigateAndFinish(context, RegisterScreen.id);
                      },
                      size: 20,
                      weight: FontWeight.bold,
                      textLine: TextDecoration.underline
                    ),
                    const SizedBox(height: 5,),
                    DefaultText(
                        title: 'ادخل الرمز المرسل',
                        size: 20,
                        align: TextAlign.start
                    ),
                    const SizedBox(height: 10,),
                    Center(
                      child: DefaultTextFormField(
                        containerWidth: 150,
                        radius: 20,
                        colorBorderEnabled: Colors.grey,
                        colorBorderFocus: Colors.red,
                        type: TextInputType.number,
                        colorInputText: Colors.black,
                        letterSpace: 8,
                        align: TextAlign.center
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Center(
                      child: DefaultText(
                          title: 'إن لم تتلقي الرسالة',
                          size: 20,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Center(
                      child: DefaultTextButton(
                          text: 'إعادة إرسال',
                          color: Colors.red,
                          press: (){},
                          size: 20,
                          weight: FontWeight.bold,
                          textLine: TextDecoration.underline
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Center(
                      child: DefaultButton(
                        text: 'موافق',
                        width: 180,
                        radius: 25,
                        size: 20,
                        color: Colors.grey,
                        press: (){
                          navigateTo(context, HomeScreen.id);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}