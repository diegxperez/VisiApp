import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../ui/balance_button.dart';
import '../../ui/card_balance.dart';
import '../../ui/custom_list_tile.dart';

class HomeView extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=338&ext=jpg&ga=GA1.1.1319243779.1708732800&semt=ais'),
              ),
            ],
          ),

          const Text(
            'My Wallet',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(
            height: 20,
          ),
          // Cards
          const CardBalance(
              balance: 1000, benefit: 0, color: Color(0xFF17130F)),
          const SizedBox(
            height: 20,
          ),
          // 2 Buttons Cards
          const Row(
            children: [
              // Income Button
              BalanceButton(
                  color: Color(0xFFE6D7FE),
                  icons: Icons.savings_outlined,
                  text: 'Income'),
              SizedBox(
                width: 20,
              ),
              // Expense Button
              BalanceButton(
                  color: Color(0xFFFFD6AD),
                  icons: Icons.money_off_csred_outlined,
                  text: 'Expense'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          // ListView
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Last Activity',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: CustomListTile(
                    title: 'Spotify',
                    amount: 300,
                    icon: Icons.shopping_bag_outlined,
                    date: 'Aug 25, 2024',
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
