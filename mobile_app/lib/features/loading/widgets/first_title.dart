import 'package:flutter/material.dart';

class FirstTitle extends StatelessWidget {
  const FirstTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Квизометрика',
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
      ),
    );
  }
}
