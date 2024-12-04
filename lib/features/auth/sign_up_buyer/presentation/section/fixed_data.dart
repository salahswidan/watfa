import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../login/presentation/widget/logo.dart';


class FixedData extends StatelessWidget {
  const FixedData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpacing(60),
        const Logo(),
        verticalSpacing(28),
        Center(
          child: Text("Let’s Get Started!",
              style: TextStyles.font24Blackw700Roboto(context)),
        ),
        verticalSpacing(18),
        Center(
          child: Text("Create an account  to get all features",
              style: TextStyles.font14DarkSilverw400Roboto(context)),
        ),
        verticalSpacing(30),
      ],
    );
  }
}
