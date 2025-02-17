import 'package:flutter/material.dart';
import 'package:mobile_app/features/screen_bar/view/screen_bar.dart';

import '/theme/colors.dart';

class LeagueScreen extends StatefulWidget {
  const LeagueScreen({super.key});

  @override
  State<LeagueScreen> createState() => _LeagueScreenState();
}

class _LeagueScreenState extends State<LeagueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepBlue,
      bottomNavigationBar: ScreenBar(
        isShop: false,
        isHome: false,
        isLeague: true,
        isProfile: false,
        isSettings: false,
      ),
    );
  }
}
