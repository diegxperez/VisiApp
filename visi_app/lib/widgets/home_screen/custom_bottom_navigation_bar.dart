import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    switch (location) {
      case '/':
        return 0;
      case '/history':
        return 1;
      case '/profile':
        return 2;
      default:
        return 0;
    }
  }

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/history');
        break;
      case 2:
        context.go('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory, // Elimina la salpicadura
        ),
        child: BottomNavigationBar(
            backgroundColor: const Color(0xFF17130F),
            selectedItemColor:
                Color(0xFFC4F276), // Color de fondo cuando está seleccionado
            unselectedItemColor:
                Colors.grey, // Color de fondo cuando no está seleccionado
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0.0,
            currentIndex: getCurrentIndex(context),
            onTap: (value) => onItemTapped(context, value),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history), label: 'History'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: 'Account'),
            ]));
  }
}
