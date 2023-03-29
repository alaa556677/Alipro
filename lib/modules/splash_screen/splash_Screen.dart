import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  static String id = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3) , (){
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.id, (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Image(image: AssetImage('assets/images/splash.jpg'), height: double.infinity, width: double.infinity,),
    );
  }
}

