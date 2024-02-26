import 'package:flutter/material.dart';

import '../../ui/custom_list_tile.dart';

class HistoryView extends StatelessWidget {
  static const String name = 'historial_view';
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
            const Text('History',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 35,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: CustomListTile(
                      title: 'Spotify',
                      amount: 300,
                      icon: Icons.shopping_bag_outlined,
                      date: 'Aug 25, 2024',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
