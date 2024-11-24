import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';

class DontHaveAcc extends StatelessWidget {
  const DontHaveAcc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyles.font16DarkLiverw400Roboto(context),
        ),
        horizontalSpacing(5),
        InkWell(
          onTap: () {
            context.pushNamed(Routes.signUpScreen);
          },
          child: Text(
            'Sign up',
            style: TextStyles.font16Purplew700Roboto(context)
                .copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}