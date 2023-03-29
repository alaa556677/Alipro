import 'package:alipro/shared/components/component.dart';
import 'package:alipro/shared/cubit/home/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/cubit/home/home_states.dart';

class HomeScreen extends StatelessWidget{
  static String id = 'HomeScreen';
  @override
  Widget build (BuildContext context){
    return BlocConsumer<HomeCubit,HomeStates>(
      builder: (context,state){
        var homeCubit = HomeCubit.get(context);
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            key: homeCubit.scaffoldKey,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: defaultAppBar(),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits), label: 'المنتجات'),
                BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined), label: 'المستخدمين'),
                BottomNavigationBarItem(icon: Icon(Icons.numbers), label: 'الاكواد'),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'الاعدادات'),
              ],
             currentIndex: homeCubit.index ,
              onTap: (index){
                homeCubit.changeIndex(index);
              },
            ),
            body: homeCubit.screens[homeCubit.index],
          ),
        );
      },
      listener: (context,state){}
    );
  }
}