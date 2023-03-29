import 'package:flutter/material.dart';
import '../../shared/cubit/home/home_cubit.dart';

class ProductScreen extends StatelessWidget {
  static String id = 'ProductScreen';
  const ProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var homeCubit = HomeCubit.get(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(child: Text('Product')),
          ],
        ),
      ),
    );
  }
}




