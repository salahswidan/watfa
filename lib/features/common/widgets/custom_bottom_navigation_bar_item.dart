import 'package:flutter/material.dart';

import '../../../core/theme/colors.dart';


class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsManagers.purple,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset("assets/images/Star 6.png"),
        ));
  }
}

