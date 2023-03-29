import 'package:alipro/shared/components/component.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget{
  static String id = 'AddProduct';
  var formKey = GlobalKey <FormState> ();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                    Center(
                      child: defaultText(
                        title: 'إضافة منتج جديد',
                        size: 25,
                        weight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 25,),
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
                        colorHint: Colors.grey
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
                        colorHint: Colors.grey
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
                        colorHint: Colors.grey
                    ),
                    const SizedBox(height: 15,),
                    Center(
                      child: defaultButton(
                        text: 'إضافة صورة',
                        width: 150,
                        height: 60,
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Center(
                      child: defaultButton(
                        text: 'حفظ',
                        width: 200,
                        height: 70,
                        size: 25,
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