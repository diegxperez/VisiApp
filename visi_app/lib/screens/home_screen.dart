import 'package:flutter/material.dart';
import '../widgets/home_screen/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  final Widget childView;
  const HomeScreen({super.key, required this.childView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: childView,
    );
  }
}
