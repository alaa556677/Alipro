import 'package:alipro/shared/cubit/register/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit <RegisterStates> {
  RegisterCubit() : super (InitialRegisterState());
  static RegisterCubit get (context) => BlocProvider.of(context);

  bool isPass = true;
  void changeRegisterPassword(){
    isPass = !isPass;
    emit(ChangePasswordState());
  }

}