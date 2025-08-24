import 'package:blood/widgets/btn_navbar.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomNavBar(); // Loads nav bar with Home/Request/Profile
  }
}
