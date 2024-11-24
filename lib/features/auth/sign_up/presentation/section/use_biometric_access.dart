
import 'package:flutter/material.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';

class UseBiometricAccess extends StatelessWidget {
  const UseBiometricAccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "Use",
          style: TextStyles.font20OuterSpaceW600Poppins(
              context),
          children: [
            TextSpan(
              text: " Biometric",
              style: TextStyles.font20OuterSpaceW600Poppins(
                      context)
                  .copyWith(
                color: ColorsManagers.purple,
              ),
            ),
            TextSpan(
              text: " Access",
              style: TextStyles.font20OuterSpaceW600Poppins(
                  context),
            ),
          ]),
    );
  }
}
