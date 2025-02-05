import 'package:flutter/material.dart';

class MainFrame extends StatelessWidget {
  const MainFrame({
    super.key,
    required this.frameElements,
  });

  final List<Widget> frameElements;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 376,
      height: 607,
      decoration: BoxDecoration(
          color: Color.fromRGBO(184, 160, 255, 1),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: frameElements,
      ),
    );
  }
}
