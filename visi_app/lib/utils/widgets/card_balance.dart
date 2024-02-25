import 'package:flutter/material.dart';

class CardBalance extends StatelessWidget {
  final double balance;
  final double benefit;
  final color;

  const CardBalance(
      {super.key,
      required this.balance,
      required this.benefit,
      required this.color});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Container(
      //width: size.width * 0.9,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0xFF17130F), borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Your Balance',
                style: TextStyle(color: Color(0xFFF5F5F0)),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.visibility_off,
                color: Color(0xFFF5F5F0),
                size: 15,
              ),
            ],
          ),
          Text(
            '\$' + balance.toString(),
            style: TextStyle(color: Color(0xFFF5F5F0), fontSize: 32),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Color(0xffC4F276),
                  borderRadius: BorderRadius.circular(5)),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_up_outlined,
                        color: Color(0xFF17130F),
                      ),
                      Text('\$0' + benefit.toString(),
                          style: TextStyle(color: color))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
