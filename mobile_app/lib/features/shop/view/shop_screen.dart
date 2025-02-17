import 'package:flutter/material.dart';
import 'package:mobile_app/features/screen_bar/view/screen_bar.dart';
import '/theme/colors.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepBlue,
      bottomNavigationBar: ScreenBar(
        isShop: true,
        isHome: false,
        isLeague: false,
        isProfile: false,
        isSettings: false,
      ),
    );
  }
}
