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
      borderRadius: BorderRadius.circular(11),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 35.h(context),
        width: 170.w(context),
        decoration: BoxDecoration(
          color: ColorsManagers.purple,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: TextStyles.font14WhiteW500Poppins(context),
            ),
          ),
        ),
      ),
    );
  }
}
