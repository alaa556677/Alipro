import 'package:alipro/shared/components/widgets/appbar.dart';
import 'package:flutter/material.dart';
import '../../shared/components/component.dart';

class CreateCodesScreen extends StatelessWidget{
  static String id = 'CreateCodesScreen';
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const DefaultAppbar(),
      ),
      body: Container(),
    );
  }
}
