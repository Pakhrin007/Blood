import 'package:blood/screens/home/hometab.dart';
import 'package:blood/screens/home/profile.dart';
import 'package:blood/screens/home/request.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  int index = 0;

  final Screens = [
    const Hometab(),      // 👈 shows "HomePage"
    const RequestScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home,
          color: index == 0 ? Colors.white : Colors.black,
          size: index == 0 ? 35 : 30),
      Icon(Icons.handyman,
          color: index == 1 ? Colors.white : Colors.black,
          size: index == 1 ? 35 : 30),
      Icon(Icons.people,
          color: index == 2 ? Colors.white : Colors.black,
          size: index == 2 ? 35 : 30),
    ];

    return Scaffold(
      extendBody: true,
      body: Screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        key: navigationKey,
        onTap: (newIndex) => setState(() {
          index = newIndex;
        }),
        color: Colors.blue,
        buttonBackgroundColor: Colors.red.shade200,
        backgroundColor: Colors.white70,
        animationCurve: Curves.easeInOut,
        height: 65,
      ),
    );
  }
}
