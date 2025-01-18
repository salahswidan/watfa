import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';
import 'package:watfa/features/auth/get_started/presentation/widgets/get_started_button.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class ProductDetails extends StatelessWidget {
  final bool? hasAppBar;

  const ProductDetails({super.key, this.hasAppBar = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hasAppBar! ? DefaultAppBar() : null,
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/product.png",
                height: 260.h(context),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "lip gloss",
                style: TextStyles.font20blackOliveW500Manrope(context),
              ),
            ),
            verticalSpacing(25.h(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SAR 230.00",
                  style: TextStyles.font20blackOliveW700Manrope(context),
                ),
                Text(
                  "SAR 512.58",
                  style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.lineThrough,
                      color: Color(0xff404040),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "shein",
                  style: TextStyles.font24darkBlackW700Manrope(context),
                ),
              ],
            ),
            verticalSpacing(16.h(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, size: 24, color: Color(0xffEBB65B)),
                    SizedBox(width: 4),
                    Text(
                      "4.9",
                      style: TextStyles.font16blackOliveW400Manrope(context),
                    ),
                  ],
                ),
                Container(
                  width: 64.w(context),
                  height: 25.h(context),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: ColorsManagers.purple,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "45% OFF",
                    style: TextStyles.font10WhiteW600Manrope(context),
                  ),
                ),
              ],
            ),
            verticalSpacing(40.h(context)),
            Row(
              children: [
                Text(
                  "Product Description",
                  style: TextStyles.font18BlackOliverW700Manrope(context),
                ),
                horizontalSpacing(170.w(context)),
                Icon(
                  Icons.keyboard_arrow_up_rounded,
                  size: 20,
                )
              ],
            ),
            verticalSpacing(10.h(context)),
            Text(
              "SHEGLAM Makeup - Jelly Wow Hydrating Lip Oil - Long- "
              "wearing moisturizing, non-sticky Plumping Lip Gloss with Sponge Tip Applicator",
              style: TextStyles.font14BlackOliverW400Manrope(context),
            ),
            verticalSpacing(30.h(context)),
            Text(
              "About this item",
              style: TextStyles.font18BlackOliverW700Manrope(context),
            ),
            verticalSpacing(5.h(context)),
            Text(
              "  • Formulated with care\n"
              "  • Brand: SHEGLAM\n"
              "  • It will be an excellent pick for you\n"
              "  • Comes with proper packaging",
              style: TextStyles.font16Blackw400Roboto(context),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50.h(context),
                    width: 64.w(context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsManagers.cultured,
                        border: Border.all(color: ColorsManagers.purple)),
                    child: Center(
                      child: Icon(
                        Icons.bookmark_border_outlined,
                        color: ColorsManagers.blackOlive,
                      ),
                    )),
                GetStartedButton(
                  onTap: () {},
                  text: "Shop",
                  isShop: true,
                ),
              ],
            ),
            verticalSpacing(20.h(context)),
          ],
        ),
      ),
    );
  }
}
