
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class UpComingPaymentContainer extends StatelessWidget {
  const UpComingPaymentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: ColorsManagers.platinum),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: ColorsManagers.purple,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/shein.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  horizontalSpacing(10),
                  Text("Shein",
                      style: TextStyles.font14OuterSpaceW500Poppins(
                          context)),
                ],
              ),
              Text("Due in 30 days".tr(context),
                  style:
                      TextStyles.font10OuterSpaceW400Poppins(context)),
            ],
          ),
          verticalSpacing(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("${"SAR".tr(context)} 150",
                  style: TextStyles.font14BlackW700Poppins(context)),
              Container(),
              Text("Pay".tr(context),
                  style: TextStyles.font14PurpleW700Poppins(context)),
            ],
          )
        ],
      ),
    );
  }
}
