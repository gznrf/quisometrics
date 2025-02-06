import 'package:flutter/material.dart';

class Cloud extends StatelessWidget {
  const Cloud({super.key, required this.top});

  final double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 30,
      child: Icon(
        Icons.cloud,
        size: 100,
        color: Colors.white,
      ),
    );
  }
}
