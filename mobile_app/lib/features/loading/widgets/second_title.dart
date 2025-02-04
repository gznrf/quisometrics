import 'package:flutter/material.dart';

class SecondTitle extends StatelessWidget {
  const SecondTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Квизометрика',
      style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(210, 247, 0, 1),
      ),
    );
  }
}
