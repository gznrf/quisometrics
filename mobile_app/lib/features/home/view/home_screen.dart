import 'package:flutter/material.dart';
import 'package:mobile_app/features/screen_bar/view/screen_bar.dart';
import '/theme/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepBlue,
      bottomNavigationBar: ScreenBar(
        isShop: false,
        isHome: true,
        isLeague: false,
        isProfile: false,
        isSettings: false,
      ),
    );
  }
}
