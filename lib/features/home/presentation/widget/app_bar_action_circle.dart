
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/colors.dart';

class AppBarActionCircle extends StatelessWidget {
  final void Function() onTap;
  final String icon;
  const AppBarActionCircle({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: ColorsManagers.purple, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SvgPicture.asset(
            icon,
            
          ),
        ),
      ),
    );
  }
}
