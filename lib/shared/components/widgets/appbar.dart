import 'package:alipro/shared/components/widgets/text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DefaultAppbar extends StatelessWidget{
  const DefaultAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DefaultText(
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
  }
}

