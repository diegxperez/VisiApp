import 'package:flutter/material.dart';
import 'package:visi_app/screens/home_screen.dart';
import 'package:visi_app/ui/custom_build_icon.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        backgroundColor: const Color(0xFFF5F5F0),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.0,
        items: const [
          BottomNavigationBarItem(
            icon: CustomBuildIcon(icon: Icons.home, index: 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: CustomBuildIcon(icon: Icons.history, index: 1),
              label: 'History'),
          BottomNavigationBarItem(
              icon: CustomBuildIcon(
                  icon: Icons.account_circle_outlined, index: 2),
              label: 'Account'),
        ],
      ),
    );
  }
}
