import 'package:alipro/modules/Login_screen/login_screen.dart';
import 'package:alipro/modules/activation_code/activation_code.dart';
import 'package:alipro/modules/codes_screen/codes_screen.dart';
import 'package:alipro/modules/create_codes/create_codes.dart';
import 'package:alipro/modules/product_screen/product_screen.dart';
import 'package:alipro/shared/cubit/home/home_cubit.dart';
import 'package:alipro/shared/cubit/login/login_cubit.dart';
import 'package:alipro/shared/cubit/register/register_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layouts/home_layout/home_layout.dart';
import 'modules/add_product/add_product.dart';
import 'modules/register_screen/register_screen.dart';
import 'modules/settings_screen/settings_screen.dart';
import 'modules/users_screen/users_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      saveLocale: true,
      path: 'assets/translations',
      child: const MyApp())
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build (BuildContext context){
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: MaterialApp(
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[200],
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent,
            )
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
          )
        ),
        routes: {
          ActivationScreen.id : (context) => ActivationScreen(),
          CodesScreen.id : (context) => CodesScreen(),
          LoginScreen.id : (context) => LoginScreen(),
          ProductScreen.id : (context) => ProductScreen(),
          RegisterScreen.id : (context) => RegisterScreen(),
          SettingsScreen.id : (context) => SettingsScreen(),
          UsersScreen.id : (context) => UsersScreen(),
          HomeScreen.id : (context) => HomeScreen(),
          AddProduct.id : (context) => AddProduct(),
          CreateCodesScreen.id : (context) => CreateCodesScreen(),
        },
        initialRoute: LoginScreen.id,
      )
    );
  }
}
