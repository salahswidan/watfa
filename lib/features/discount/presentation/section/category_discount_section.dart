import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../core/theme/styles.dart';
import '../../../category/presentation/screen/category_screen.dart';
import '../../../category/presentation/section/store_row.dart';
import '../../../category/presentation/widget/category_container.dart';
import '../../../category/presentation/widget/category_divider.dart';
import '../widget/category_dicount_container.dart';
import '../widget/discount_container.dart';

class CategoryDiscountSection extends StatefulWidget {
  final int selectedCategory;

  const CategoryDiscountSection({
    super.key,
    required this.selectedCategory,
  });

  @override
  State<CategoryDiscountSection> createState() =>
      _CategoryDiscountSectionState();
}

class _CategoryDiscountSectionState extends State<CategoryDiscountSection> {
  int selectedIndex = 0;
  late int selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.selectedCategory;
  }

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
              style: TextStyles.font17BlackOliveW700Manrope(context),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      5,
                      (index) {
                        final categories = [
                          {
                            "imageCategory": "assets/images/category_test.png",
                            "titleCategory": "Fashion"
                          },
                          {
                            "imageCategory": "assets/images/Beauty.png",
                            "titleCategory": "Beauty"
                          },
                          {
                            "imageCategory": "assets/images/Bags.png",
                            "titleCategory": "Bags"
                          },
                          {
                            "imageCategory": "assets/images/Accessories.png",
                            "titleCategory": "Accessor"
                          },
                          {
                            "imageCategory": "assets/images/Skincare.png",
                            "titleCategory": "Skincare"
                          },
                        ];

                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategory = index;
                              });
                            },
                            child: CategoryContainer(
                              imageCategory: categories[index]
                                  ["imageCategory"]!,
                              titleCategory: categories[index]
                                  ["titleCategory"]!,
                              isSelected: index == selectedCategory,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
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
        verticalSpacing(192),
      ],
    );
  }
}




        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: List.generate(
        //         10,
        //         (index) => Padding(
        //               padding: const EdgeInsets.only(right: 10),
        //               child: GestureDetector(
        //                 onTap: () {
        //                   setState(() {
        //                     selectedIndex = index;
        //                   });
        //                 },
        //                 child: FadeInRight(
        //                   delay: Duration(milliseconds: (index + 1) * 150),
        //                   child: CategoryDicountContainer(
        //                     isSelected: selectedIndex == index,
        //                   ),
        //                 ),
        //               ),
        //             )),
        //   ),
        // ),