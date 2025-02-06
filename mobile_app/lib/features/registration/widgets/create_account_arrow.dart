import 'package:flutter/material.dart';

class CreateAccountArrow extends StatelessWidget {
  const CreateAccountArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Image.asset('assets/icons/next_arrow.png')
        ),
      ],
    );
  }
}
