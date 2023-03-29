import 'package:alipro/shared/cubit/login/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit <LoginStates>{
  LoginCubit() : super(InitialHomeStates());
  static LoginCubit get (context) => BlocProvider.of(context);





}