import 'package:flutter/material.dart';
import 'package:mobile_app/features/screen_bar/widget/main_container.dart';

import '../widget/bar_icon.dart';


class ScreenBar extends StatelessWidget {
  const ScreenBar({
    super.key,
    required this.isShop,
    required this.isLeague,
    required this.isHome,
    required this.isProfile,
    required this.isSettings,
  });

  final bool isShop;
  final bool isLeague;
  final bool isHome;
  final bool isProfile;
  final bool isSettings;


  @override
  Widget build(BuildContext context) {
    return MainContainer(
      children: [
        SizedBox(width: 22,),
        BarIcon(isSelected: isShop, iconPath: 'assets/icons/shop_button.png', toScreenPath: '/shop'),
        SizedBox(width: 22,),
        BarIcon(isSelected: isLeague, iconPath: 'assets/icons/league_button.png', toScreenPath: '/league'),
        SizedBox(width: 22,),
        BarIcon(isSelected: isHome, iconPath: 'assets/icons/home_button.png', toScreenPath: '/home'),
        SizedBox(width: 22,),
        BarIcon(isSelected: isProfile, iconPath: 'assets/icons/profile_button.png', toScreenPath: '/profile'),
        SizedBox(width: 22,),
        BarIcon(isSelected: isSettings, iconPath: 'assets/icons/more_button.png', toScreenPath: '/settings'),
      ],
    );
  }
}
