import 'package:flutter/material.dart';

class AvatarInput extends StatelessWidget {
  const AvatarInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(),
          alignment: Alignment.center,
          width: 187,
          height: 187,
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
