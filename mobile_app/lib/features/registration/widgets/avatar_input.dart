import 'package:flutter/material.dart';

class AvatarInput extends StatelessWidget {
  const AvatarInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30),
          alignment: Alignment.center,
          width: 109,
          height: 109,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(90),
          ),
          child: Text('Фото', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),),
        ),
      ],
    );
  }
}
