import 'package:flutter/material.dart';

class PasswordConfirmationInput extends StatelessWidget {
  const PasswordConfirmationInput({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          alignment: Alignment.centerLeft,
          width: 319,
          height: 72,
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: TextField(
            controller: controller,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            cursorColor: Color.fromRGBO(184, 160, 255, 1),
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w300,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Подтвердите пароль",
              hintStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
