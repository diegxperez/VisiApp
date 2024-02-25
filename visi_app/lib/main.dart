import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visi_app/utils/widgets/card_balance.dart';
import 'package:visi_app/utils/widgets/balance_button.dart';
import 'package:visi_app/utils/widgets/custom_list_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F0),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFF5F5F0),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFC4F276),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.home_outlined),
                    )),
                label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
          ],
          selectedItemColor: Color(0xFF17130F),
        ),
        // APPBAR
        appBar: AppBar(
          backgroundColor: const Color(0xFFF5F5F0),
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=338&ext=jpg&ga=GA1.1.1319243779.1708732800&semt=ais'),
              ),
            )
          ],
        ),
        // BODY
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'My Wallet',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
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
              // Text : Last Activity

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
      ),
    );
  }
}
