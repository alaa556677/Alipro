import 'package:alipro/modules/create_codes/create_codes.dart';
import 'package:alipro/shared/components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../add_product/add_product.dart';

class SettingsScreen extends StatelessWidget{
  static String id = 'SettingsScreen';
  var formKey = GlobalKey <FormState> ();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ExpansionTile(
                title: defaultText(
                  title: 'إضافة منتج',
                ),
                leading: const Icon(Icons.add),
                childrenPadding: EdgeInsets.all(15),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultTextFormField(
                        type: TextInputType.text,
                        controller: nameController,
                        hint: 'اسم المنتج',
                        validate: (value) {
                            if (value.isEmpty) {
                              return 'يجب كتابة الاسم';
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
                      defaultTextFormField(
                          type: TextInputType.text,
                          controller: descriptionController,
                          hint: 'وصف المنتج',
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'يجب كتابة الاسم';
                            }
                            return null;
                          },
                          prefix: Icons.description,
                          colorPrefix: Colors.grey,
                          radius: 15,
                          colorInputText: Colors.black,
                          colorHint: Colors.grey,
                        colorBorderEnabled: Colors.grey,
                        colorBorderFocus: Colors.red,
                      ),
                      const SizedBox(height: 15,),
                      defaultTextFormField(
                          type: TextInputType.text,
                          controller: priceController,
                          hint: 'سعر المنتج',
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'يجب كتابة الاسم';
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
                            child: defaultButton(
                              text: 'إضافة صورة',
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Expanded(
                            child: defaultButton(
                              text: 'حفظ',
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
                title: defaultText(
                  title: 'إضافة الاكواد',
                ),
                leading: const Icon(Icons.add),
                childrenPadding: const EdgeInsets.all(15),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(child: defaultText(title: 'عدد الاكواد', size: 18)),
                          Expanded(
                            child: defaultTextFormField(
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
                          Expanded(child: defaultText(title: 'اسم الكارت', size: 18)),
                          Expanded(
                            child: defaultTextFormField(
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
                          Expanded(child: defaultText(title: 'كود الكارت', size: 18)),
                          Expanded(
                            child: defaultTextFormField(
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
                          Expanded(child: defaultText(title: 'عدد نقاط الكارت', size: 18)),
                          Expanded(
                            child: defaultTextFormField(
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
                            child: defaultButton(
                              text: 'إنشاء الاكواد',
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Expanded(
                            child: defaultButton(
                              text: 'حفظ',
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
          ],
        ),
      ),
    );
  }
}