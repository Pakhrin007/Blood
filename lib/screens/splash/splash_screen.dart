import 'dart:async';

import 'package:blood/core/themes/theme.dart';
import 'package:blood/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), (){
      Navigator.pushReplacementNamed(context, MyRoutes.loginScreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: MyTheme.reddishColor,
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: Center(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset("assets/lottie/splash_screen.json"),
              "BloodLife".text.semiBold.xl3.fontFamily('libertin').textStyle(context.captionStyle).color(MyTheme.primaryColor).make(),
              
              10.heightBox,
              CircularProgressIndicator(color: MyTheme.primaryColor,)
            ],
          ),
        )),
    );
  }
}