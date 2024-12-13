import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class CategoryContainer extends StatelessWidget {
  final bool isSelected;
  const CategoryContainer({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ColorsManagers.magnolia,
        shape: BoxShape.circle,
        border: isSelected
            ? Border.all(
                color: ColorsManagers.wisteria,
                width: 2,
              )
            : null,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/category_test.png',
            width: 34,
          ),
          verticalSpacing(5.h(context)),
          Text("Fashion", style: TextStyles.font10Blackw500Podkova(context)),
        ],
      ),
    );
  }
}
