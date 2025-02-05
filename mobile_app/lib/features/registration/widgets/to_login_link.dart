import 'package:flutter/material.dart';

class ToLoginLink extends StatelessWidget {
  const ToLoginLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 30, top:10),
          child: Row(
            children: [
              Text(
                'Уже зарегистрированы?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(width: 7,),
              InkWell(
                child: Text(
                  'Войти',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
