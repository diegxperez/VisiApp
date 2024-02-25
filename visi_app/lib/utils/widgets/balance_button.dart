import 'package:flutter/material.dart';

class BalanceButton extends StatelessWidget {
  final String text;
  final icons;
  final color;

  const BalanceButton(
      {super.key,
      required this.icons,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Icon(
              icons,
              size: 30,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
