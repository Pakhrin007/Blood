import 'package:blood/routes/routes.dart';
import 'package:blood/screens/auth/forgot_screen.dart';
import 'package:blood/screens/auth/login_screen.dart';
import 'package:blood/screens/auth/otp_page.dart';
import 'package:blood/screens/auth/register_screen.dart';
import 'package:blood/screens/auth/reset_password.dart';
import 'package:blood/screens/home/home.dart';
import 'package:blood/screens/splash/splash_screen.dart';
import 'package:blood/widgets/btn_navbar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      initialRoute: MyRoutes.splashScreenRoute,
      routes: {
        MyRoutes.splashScreenRoute:(context)=>SplashScreen(),
        MyRoutes.loginScreenRoute:(context)=>LoginScreen(),
        MyRoutes.registerScreenRoute:(context)=>RegisterScreen(),
        MyRoutes.forgotPasswordSreenRoute:(context)=>ForgotScreen(),
        MyRoutes.otpScreenRoute:(context)=>OtpPage(),
        MyRoutes.resetPasswordRoute:(context)=>ResetPassword(),
        MyRoutes.homePageRooute:(context)=>HomePageScreen(),
      },
    );
  }
}