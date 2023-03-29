import 'package:alipro/shared/components/component.dart';
import 'package:alipro/shared/components/widgets/appbar.dart';
import 'package:alipro/shared/cubit/home/home_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/cubit/home/home_states.dart';

class HomeScreen extends StatelessWidget{
  static String id = 'HomeScreen';
  const HomeScreen({super.key});
  @override
  Widget build (BuildContext context){
    return BlocConsumer<HomeCubit,HomeStates>(
      builder: (context,state){
        var homeCubit = HomeCubit.get(context);
        return Scaffold(
          key: homeCubit.scaffoldKey,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: DefaultAppbar(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items:[
              BottomNavigationBarItem(icon: const Icon(Icons.production_quantity_limits), label: "products".tr().toString()),
              BottomNavigationBarItem(icon: const Icon(Icons.supervised_user_circle_outlined), label: "users".tr().toString()),
              BottomNavigationBarItem(icon: const Icon(Icons.numbers), label: "codes".tr().toString()),
              BottomNavigationBarItem(icon: const Icon(Icons.settings), label:  "settings".tr().toString()),
            ],
           currentIndex: homeCubit.index ,
            onTap: (index){
              homeCubit.changeIndex(index);
            },
          ),
          body: homeCubit.screens[homeCubit.index],
        );
      },
      listener: (context,state){}
    );
  }
}