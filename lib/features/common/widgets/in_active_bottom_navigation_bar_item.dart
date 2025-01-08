import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/styles.dart';


class InActiveBottomNavigationBarItem extends StatelessWidget {
  final String image;
  final String text ;
  const InActiveBottomNavigationBarItem({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, width: 24),
        verticalSpacing(5),
        Text(
          text.tr(context),
          style: TextStyles.font12OuterSpaceW400Poppins(context),
        ),
      ],
    );
  }
}