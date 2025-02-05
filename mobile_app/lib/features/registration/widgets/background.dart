import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.frame,
  });

  final Widget frame;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/register_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: frame,
      ),
    );
  }
}
