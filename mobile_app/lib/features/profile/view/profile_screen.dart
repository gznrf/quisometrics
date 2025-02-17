import 'package:flutter/material.dart';
import 'package:mobile_app/features/screen_bar/view/screen_bar.dart';
import '/theme/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepBlue,
      bottomNavigationBar: ScreenBar(
        isShop: false,
        isHome: false,
        isLeague: false,
        isProfile: true,
        isSettings: false,
      ),
    );
  }
}
