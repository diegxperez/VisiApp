import 'package:flutter/material.dart';
import 'package:visi_app/screens/home_screen.dart';

class CustomBuildIcon extends StatelessWidget {
  final icon;
  final index;

  const CustomBuildIcon({super.key, required this.icon, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.transparent),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(icon, color: Colors.grey),
          ),
        ),
        if (selectedIndex == index)
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color(0xFFC4F276),
                borderRadius: BorderRadius.circular(8.0)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(
                icon,
                color: const Color(0xff16120F),
              ),
            ),
          ),
      ],
    );
  }
}
