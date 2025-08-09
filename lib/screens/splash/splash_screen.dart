import 'dart:async';

import 'package:blood/core/themes/theme.dart';
import 'package:blood/routes/app_routes.dart';
import 'package:flutter/material.dart';
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
    Timer(Duration(seconds: 4), (){
      Navigator.pushReplacementNamed(context, MyRoutes.loginScreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.reddishColor,
      body: SafeArea(
        
        child: Center(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "BloodLife".text.xl4.bold.make(),
              "Save Life Donate Blood".text.semiBold.xl.fontFamily('Poppins').textStyle(context.captionStyle,).make(),
              18.heightBox,
              CircularProgressIndicator()
            ],
          ),
        )),
    );
  }
}