import 'package:blood/screens/home/home.dart';
import 'package:blood/screens/home/profile.dart';
import 'package:blood/screens/home/request.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex=1;

  final List<Widget>_Page=[
    Home(),
    Request(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: _Page[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          
          onTap: (value) {
            setState(() {
            _currentIndex=value;  
            });
            
          },
          buttonBackgroundColor: Vx.red400,
          height: 65,
          color: Vx.red400,
          backgroundColor: Colors.transparent,
          items:  [
            _currentIndex==0?Icon(Icons.home,size: 35,color: Vx.white,):Icon(Icons.home_outlined,size: 30,),
            _currentIndex==1?Icon(Icons.bloodtype,size: 35,color: Vx.white,):Icon(Icons.bloodtype_outlined,size:30,),
            _currentIndex==2?Icon(CupertinoIcons.person,size: 35,color: Vx.white,):Icon(CupertinoIcons.person_alt,size: 30,),
            
          // Icon(Icons.home,size: 30,),
          // Icon(Icons.bloodtype_outlined,size: 30,),
          // Icon(CupertinoIcons.profile_circled,size: 30,)
        ])

      ),
    );
  }
}