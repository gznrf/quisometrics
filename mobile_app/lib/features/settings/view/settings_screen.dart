import 'package:flutter/material.dart';
import 'package:mobile_app/features/screen_bar/view/screen_bar.dart';
import '/theme/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepBlue,
      bottomNavigationBar: ScreenBar(
        isShop: false,
        isHome: false,
        isLeague: false,
        isProfile: false,
        isSettings: true,
      ),
    );
  }
}
