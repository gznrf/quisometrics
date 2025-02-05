import 'package:flutter/material.dart';

class RemovePhotoButton extends StatelessWidget {
  const RemovePhotoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30, left: 18),
          width: 85,
          height: 69,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Image.asset('assets/icons/cross.png'),
        ),
      ],
    );
  }
}
