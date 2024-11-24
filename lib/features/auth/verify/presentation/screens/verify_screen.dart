import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';
import '../../../otp/presentation/widgets/pinput_field.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  verticalSpacing(30),
                  Image.asset(
                    'assets/images/Watfa_logo 4.png',
                    // width: 170.w,
                    fit: BoxFit.fitWidth,
                  ),
                  verticalSpacing(40),
                  Text("Verify Your Account",
                  ),
                  verticalSpacing(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                        textAlign: TextAlign.center,
                        "We have send you 6 digits verification code to your email. Please kindly check",
                      ),
                  ),
                  verticalSpacing(50),
                  const PinputField(),
                  verticalSpacing(60),
                  CustomAuthButton(
                    onTap: () {
                      context.pushNamed(Routes.accountCreatedScreen);
                    },
                    text: 'VERIFY',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
