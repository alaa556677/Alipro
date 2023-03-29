import 'package:flutter/material.dart';
import '../../shared/cubit/home/home_cubit.dart';

class ProductScreen extends StatelessWidget {
  static String id = 'ProductScreen';
  @override
  Widget build(BuildContext context) {
    var homeCubit = HomeCubit.get(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(child: Text('Product')),
        ],
      ),
    );
  }
}




