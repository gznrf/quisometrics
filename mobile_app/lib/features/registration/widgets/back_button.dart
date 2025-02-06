import 'package:flutter/material.dart';

class BackToEmailButton extends StatelessWidget {
  const BackToEmailButton({super.key, required this.requestFunction});

  final Function requestFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          width: 63,
          height: 63,
          decoration: BoxDecoration(
              color: Color.fromRGBO(243, 243, 243, 1),
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: InkWell(
            onTap: () {
              requestFunction();
            },
            child: Image.asset('assets/icons/back_arrow.png'),
          ),
        ),
      ],
    );
  }
}
