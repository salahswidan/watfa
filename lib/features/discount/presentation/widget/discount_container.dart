import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import 'discount_button.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 170.w(context),
        decoration: BoxDecoration(
          color: ColorsManagers.antiFlashWhite,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorsManagers.gray, width: .5),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: const AssetImage(
                'assets/images/discount_test.png',
              ),
            ),
            verticalSpacing(15),
            Text("10 % off at lizl Beauty".tr(context),
                style: TextStyles.font20DarkCharcoalw700Manrope(context)),
            verticalSpacing(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
              child: DiscountButton(onTap: () {}, text: "use discount".tr(context)),
            )
          ],
        ));
  }
}
