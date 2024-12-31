import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class DiscountButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const DiscountButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 35,
        width: context.screenWidth,
        decoration: BoxDecoration(
          color: ColorsManagers.purple,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: TextStyles.font16WhiteW500Poppins(context),
            ),
          ),
        ),
      ),
    );
  }
}
