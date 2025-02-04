import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.backgroundElements,
  });


  final List<Widget> backgroundElements;


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(156, 2, 167, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: backgroundElements,
        ),
      ),
    );
  }
}
