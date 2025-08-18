import 'package:blood/widgets/btn_navbar.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              
              Text("HomePage"),
              
              
            ],
          ),
          
        )
        ,
        bottomNavigationBar: BottomNavBar(),
      ),
  
    );
  }
}