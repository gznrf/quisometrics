import 'package:flutter/material.dart';

class UploadPhotoButton extends StatelessWidget {
  const UploadPhotoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 150, left: 150),
          width: 60,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromRGBO(234, 234, 234, 1),
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Image.asset('assets/icons/upload.png'),
        ),
      ],
    );
  }
}
