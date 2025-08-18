import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index=2;
  @override

  Widget build(BuildContext context) {
    final items=<Widget>[
      Icon(Icons.home),
      Icon(Icons.handyman),
      Icon(Icons.people)
    ];
    return CurvedNavigationBar(items:items,index: index,);
  }
}

