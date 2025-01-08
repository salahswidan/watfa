
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/styles.dart';

class DiscountAppBar extends StatelessWidget {
  const DiscountAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric(vertical: 20),
      child: FadeInDown(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Star 7.png',
              height: 32,
            ),
            horizontalSpacing(5),
            Text(
              "Watfa discounts".tr(context),
              style: TextStyles.font20PurpleW700Manrope(context),
            ),
          ],
        ),
      ),
    );
  }
}
