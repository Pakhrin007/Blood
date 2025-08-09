import 'package:blood/routes/routes.dart';
import 'package:blood/screens/auth/login_screen.dart';
import 'package:blood/screens/splash/splash_screen.dart';
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
      initialRoute: MyRoutes.splashScreenRoute,
      routes: {
        MyRoutes.splashScreenRoute:(context)=>SplashScreen(),
        MyRoutes.loginScreenRoute:(context)=>LoginScreen(),
      },
    );
  }
}