import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class SpecialOffersProduct extends StatelessWidget {
  const SpecialOffersProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265.h(context),
      width: 185.w(context),
      decoration: BoxDecoration(
        color: ColorsManagers.lavenderBlush,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                          color: ColorsManagers.purple,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Text("45% OFF".tr(context),
                          style: TextStyles.font10WhiteW600Manrope(context)),
                    ),
                    Icon(
                      Icons.bookmark_border_outlined,
                      color: ColorsManagers.blackOlive,
                    ),
                  ],
                ),
                // Spacer(),
                verticalSpacing(150.h(context)),
                Text(
                  "${"SAR".tr(context)} 230.00",
                  style: TextStyles.font20BlackOliveW700Manrope(context),
                ),
                Text(
                  "${"SAR".tr(context)} 460.00",
                  style:
                      TextStyles.font12BlackOliveW400Manrope(context).copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      size: 12,
                      color: ColorsManagers.sunRay,
                    ),
                    Text("4.5",
                        style: TextStyles.font12BlackOliveW400Manrope(context)),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: -16.h(context),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/product.png",
                  width: 140.w(context),
                ),
                Text("lip gloss".tr(context),
                    style: TextStyles.font14BlackwOliveW400Manrope(context)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
