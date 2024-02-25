import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final icon;
  final title;
  final date;
  final amount;

  const CustomListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.date,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color(0xFF17130F),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: Color(0xFFF5F5F0),
              size: 28,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                date,
                style: TextStyle(color: Color(0xFF949492), fontSize: 12),
              )
            ],
          ),
        ),
        Text(
          '\$ ' + amount.toString(),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
