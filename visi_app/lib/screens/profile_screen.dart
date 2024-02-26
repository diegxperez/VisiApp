import 'package:flutter/material.dart';
import '../ui/custom_list_tile_profile.dart';
import '../widgets/home_screen/custom_bottom_navigation_bar.dart';

void main() => runApp(const ProfileScreen());

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      backgroundColor: Color(0xFFF5F5F0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      'Settings',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomListTileProfile(
                    iconLeading: Icons.account_circle,
                    title: 'Account',
                  ),
                  CustomListTileProfile(
                    iconLeading: Icons.settings_accessibility_outlined,
                    title: 'Preferences',
                  ),
                  CustomListTileProfile(
                    iconLeading: Icons.live_help_outlined,
                    title: 'Get Help',
                  ),
                  CustomListTileProfile(
                    iconLeading: Icons.feedback_outlined,
                    title: 'Send Feedback',
                  ),
                ],
              ),
              CustomListTileProfile(
                iconLeading: Icons.logout_outlined,
                title: 'Logout',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
