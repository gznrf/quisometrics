import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 319,
          height: 67,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: TextButton(
              onPressed: () {},
              child: Text('Зарегестрироваться', style: TextStyle(color: Color.fromRGBO(79, 77, 77, 1), fontSize: 24, fontWeight: FontWeight.bold),)
          ),
        ),
      ],
    );
  }
}
