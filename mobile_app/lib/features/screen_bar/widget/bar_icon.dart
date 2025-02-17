import 'package:flutter/material.dart';

class BarIcon extends StatelessWidget {
  const BarIcon({
    super.key,
    required this.isSelected,
    required this.iconPath,
    required this.toScreenPath,
  });

  final bool isSelected;
  final String iconPath;
  final String toScreenPath;

  @override
  Widget build(BuildContext context) {
    if (isSelected){
      return Container(
        width: 79,
        height: 79,
        child: InkWell(
          child: Image.asset(iconPath),
          onTap: () {

          },
        ),
      );
    }else {
      return Container(
        width: 60,
        height: 60,
        child: InkWell(
          child: Image.asset(iconPath),
          onTap: () {
            Navigator.pushNamed(context, toScreenPath);
          },
        ),
      );
    }

  }
}
