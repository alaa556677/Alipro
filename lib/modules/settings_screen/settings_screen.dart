import 'package:alipro/modules/create_codes/create_codes.dart';
import 'package:alipro/shared/components/component.dart';
import 'package:alipro/shared/components/widgets/button.dart';
import 'package:alipro/shared/components/widgets/text.dart';
import 'package:alipro/shared/components/widgets/text_form_field.dart';
import 'package:alipro/shared/cubit/login/login_cubit.dart';
import 'package:alipro/shared/cubit/login/login_states.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../add_product/add_product.dart';

class SettingsScreen extends StatelessWidget{
  static String id = 'SettingsScreen';
  var formKey = GlobalKey <FormState> ();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  SettingsScreen({super.key});
  @override
  Widget build(BuildContext context){
    return BlocBuilder <LoginCubit,LoginStates>(
      builder: (context,state){
        LoginCubit loginCubit = LoginCubit.get(context);
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ExpansionTile(
                    title: DefaultText(
                      title: "addProducts".tr().toString(),
                    ),
                    leading: const Icon(Icons.add),
                    childrenPadding: EdgeInsets.all(15),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultTextFormField(
                            type: TextInputType.text,
                            controller: nameController,
                            hint: "productName".tr().toString(),
                            validate: (value) {
                              if (value.isEmpty) {
                                return "validateProductName".tr().toString();
                              }
                              return null;
                            },
                            prefix: Icons.title,
                            colorPrefix: Colors.grey,
                            radius: 15,
                            colorInputText: Colors.black,
                            colorHint: Colors.grey,
                            colorBorderEnabled: Colors.grey,
                            colorBorderFocus: Colors.red,
                          ),
                          const SizedBox(height: 15,),
                          DefaultTextFormField(
                            type: TextInputType.text,
                            controller: descriptionController,
                            hint:"productDescription".tr().toString(),
                            prefix: Icons.description,
                            colorPrefix: Colors.grey,
                            radius: 15,
                            colorInputText: Colors.black,
                            colorHint: Colors.grey,
                            colorBorderEnabled: Colors.grey,
                            colorBorderFocus: Colors.red,
                          ),
                          const SizedBox(height: 15,),
                          DefaultTextFormField(
                            type: TextInputType.text,
                            controller: priceController,
                            hint: "productPrice".tr().toString(),
                            validate: (value) {
                              if (value.isEmpty) {
                                return "validateProductPrice".tr().toString();
                              }
                              return null;
                            },
                            prefix: Icons.price_change,
                            colorPrefix: Colors.grey,
                            radius: 15,
                            colorInputText: Colors.black,
                            colorHint: Colors.grey,
                            colorBorderEnabled: Colors.grey,
                            colorBorderFocus: Colors.red,
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              Expanded(
                                child: DefaultButton(
                                  text: "addImage".tr().toString(),
                                  size: 18,
                                ),
                              ),
                              const SizedBox(width: 15,),
                              Expanded(
                                child: DefaultButton(
                                  text: "save".tr(),
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ExpansionTile(
                    title: DefaultText(
                      title: "addCodes".tr().toString(),
                    ),
                    leading: const Icon(Icons.add),
                    childrenPadding: const EdgeInsets.all(15),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(child: DefaultText(title: "numberOfCodes".tr().toString(), size: 18)),
                              Expanded(
                                child: DefaultTextFormField(
                                  colorBorderFocus: Colors.red,
                                  colorBorderEnabled: Colors.grey,
                                  radius: 15,
                                  colorInputText: Colors.black,
                                  align: TextAlign.center,
                                  type: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(child: DefaultText(title: "cardName".tr().toString(), size: 18)),
                              Expanded(
                                child: DefaultTextFormField(
                                  colorBorderFocus: Colors.red,
                                  colorBorderEnabled: Colors.grey,
                                  radius: 15,
                                  colorInputText: Colors.black,
                                  align: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(child: DefaultText(title: "cardCode".tr().toString(), size: 18)),
                              Expanded(
                                child: DefaultTextFormField(
                                  colorBorderFocus: Colors.red,
                                  colorBorderEnabled: Colors.grey,
                                  radius: 15,
                                  colorInputText: Colors.black,
                                  align: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(child: DefaultText(title: "cardPoints".tr().toString(), size: 18)),
                              Expanded(
                                child: DefaultTextFormField(
                                  colorBorderFocus: Colors.red,
                                  colorBorderEnabled: Colors.grey,
                                  radius: 15,
                                  colorInputText: Colors.black,
                                  align: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                child: DefaultButton(
                                  text: "createCards".tr().toString(),
                                  size: 18,
                                ),
                              ),
                              const SizedBox(width: 15,),
                              Expanded(
                                child: DefaultButton(
                                  text: "cardButton".tr().toString(),
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ExpansionTile(
                    title: DefaultText(
                      title: "language".tr().toString(),
                    ),
                    leading: const Icon(Icons.language),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: DefaultText(title: "arabic".tr().toString()),
                            onTap: (){
                              context.setLocale(const Locale('ar'));
                              //loginCubit.isEnglish = false;
                            },
                          ),
                          const SizedBox(height: 15,),
                          ListTile(
                            leading: DefaultText(title: "English".tr().toString()),
                            onTap: (){
                              context.setLocale(const Locale('en'));
                              //loginCubit.isEnglish = true ;
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}