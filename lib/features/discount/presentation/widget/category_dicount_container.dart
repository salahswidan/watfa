import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class CategoryDicountContainer extends StatelessWidget {
  final bool isSelected;
  const CategoryDicountContainer({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isSelected ? ColorsManagers.paleLavender : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/category_test.png',
            width: 34,
          ),
          verticalSpacing(5.h(context)),
          Text("Fashion".tr(context),
              style: TextStyles.font8Blackw500Podkova(context)),
        ],
      ),
    );
  }
}
