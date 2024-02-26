import 'package:flutter/material.dart';
import 'package:visi_app/ui/balance_button.dart';
import 'package:visi_app/ui/card_balance.dart';
import '../widgets/home_screen/custom_bottom_navigation_bar.dart';
import '../ui/custom_list_tile.dart';

int selectedIndex = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF5F5F0),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=338&ext=jpg&ga=GA1.1.1319243779.1708732800&semt=ais'),
                ),
              ],
            ),

            Text(
              'My Wallet',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 20,
            ),
            // Cards
            CardBalance(balance: 1000, benefit: 0, color: Color(0xFF17130F)),
            SizedBox(
              height: 20,
            ),
            // 2 Buttons Cards
            Row(
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
            SizedBox(
              height: 20,
            ),

            // ListView
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Activity',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomListTile(
                  title: 'Spotify',
                  amount: 300,
                  icon: Icons.shopping_bag_outlined,
                  date: 'Aug 25, 2024',
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
