import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/custom_gradient_container.dart';
import '../../../login/presentation/widget/logo.dart';
import '../../../otp/presentation/widgets/pinput_field.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradientContainer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Flexible(flex: 2, child: verticalSpacing(80)),
                  const Logo(),
                  Flexible(flex: 2, child: verticalSpacing(60)),
                  Text("Check Your Email",
                      style: TextStyles.font24Blackw700Roboto(context)),
                  verticalSpacing(18),
                  Text(
                    "We sent a reset link to mariamfawzy.com enter 4 digit code that mentioned in the email",
                    style: TextStyles.font14DarkSilverw400Roboto(context),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(child: verticalSpacing(40)),
                  Align(
                    child: TextButton(onPressed: () {
                      context.pop();
                    }, child: Text("Change")),
                  ),
                  verticalSpacing(20),
                  const PinputField(),
                  verticalSpacing(60),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
