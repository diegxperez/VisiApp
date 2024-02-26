import 'package:flutter/material.dart';

class CustomAppBar {
  PreferredSizeWidget appbar() {
    return AppBar(
      elevation: 0,
      shadowColor: Colors.transparent,
      scrolledUnderElevation: 0,
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
    );
  }
}
