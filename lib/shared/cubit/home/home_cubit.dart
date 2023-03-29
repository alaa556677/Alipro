import 'package:alipro/shared/cubit/home/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../modules/codes_screen/codes_screen.dart';
import '../../../modules/product_screen/product_screen.dart';
import '../../../modules/settings_screen/settings_screen.dart';
import '../../../modules/users_screen/users_screen.dart';

class HomeCubit extends Cubit <HomeStates>{
  HomeCubit() : super(InitialHomeState());
  static HomeCubit get (context) => BlocProvider.of(context);

  int index = 0 ;
  void changeIndex(currentIndex){
    index = currentIndex ;
    emit(ChangeIndex());
  }

  List screens = [
    ProductScreen(),
    UsersScreen(),
    CodesScreen(),
    SettingsScreen(),
  ];

  var scaffoldKey = GlobalKey <ScaffoldState> ();
  bool isBottomSheetShown = true ;
  IconData floatButton = Icons.edit;
  void showBottomSheet () {
    if (isBottomSheetShown == true){
      floatButton = Icons.edit;
    }else {
      floatButton = Icons.add;
    }
    emit(ChangeBottomSheetIcon());
  }
}