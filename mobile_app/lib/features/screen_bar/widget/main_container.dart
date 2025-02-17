import 'package:flutter/material.dart';

import '/theme/colors.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          color: AppColors.defaultBlue,
          alignment: Alignment.center,
          width: 450,
          height: 91,
          child: Row(
            children: children,
          ),
        ),
      ],
    );
  }
}
