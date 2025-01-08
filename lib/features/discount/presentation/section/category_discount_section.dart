import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../core/theme/styles.dart';
import '../widget/category_dicount_container.dart';
import '../widget/discount_container.dart';

class CategoryDiscountSection extends StatefulWidget {
  const CategoryDiscountSection({
    super.key,
  });

  @override
  State<CategoryDiscountSection> createState() =>
      _CategoryDiscountSectionState();
}

class _CategoryDiscountSectionState extends State<CategoryDiscountSection> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInRight(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "All discounts".tr(context),
              style: TextStyles.font20BlackOliveW700Manrope(context),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                10,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: FadeInRight(
                          delay: Duration(milliseconds: (index + 1) * 150),
                          child: CategoryDicountContainer(
                            isSelected: selectedIndex == index,
                          ),
                        ),
                      ),
                    )),
          ),
        ),
        verticalSpacing(30),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                10,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: FadeInRight(
                          delay: Duration(milliseconds: (index + 5) * 150),
                          child: DiscountContainer()),
                    )),
          ),
        ),
      ],
    );
  }
}
