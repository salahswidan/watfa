import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: ColorsManagers.magnolia,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h(context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/icon.png",
              width: 60.w(context),
            ),
            horizontalSpacing(20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Flipcart Shopping Offer".tr(context),
                          style:
                              TextStyles.font16GraniteGrayW600Nunito(context),
                        ),
                      ),
                      //    Expanded(child: SizedBox()),
                      horizontalSpacing(45.w(context)),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text("1 min ago".tr(context),
                            style: TextStyles.font10Blackw400Roboto(context)),
                      ),
                    ],
                  ),
                  verticalSpacing(5),
                  Text(
                    "Shop on Flipcart using our payment system to get upto 50% cashback . T&C appply"
                        .tr(context),
                    style: TextStyles.font10GraniteGrayW600Nunito(context),
                    softWrap: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
