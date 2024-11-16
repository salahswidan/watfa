import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/stack_shape.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';
import '../widgets/pinput_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const StackShape(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  verticalSpacing(30),
                  Image.asset(
                    'assets/images/Watfa_logo 4.png',
                    width: 170.w,
                    fit: BoxFit.fitWidth,
                  ),
                  verticalSpacing(40),
                  Text("Check Your Email",
                      style: TextStyles.font24Blackw700Roboto),
                  verticalSpacing(10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                        textAlign: TextAlign.center,
                        "We sent a reset link to contact@dscode...com enter 6digit code that mentioned in the email",
                        style: TextStyles.font14Grayw400Roboto),
                  ),
                  verticalSpacing(50),
                  const PinputField(),
                  verticalSpacing(60),
                  CustomAuthButton(
                    onTap: () {
                      context.pushNamed(Routes.otpScreen);
                    },
                    text: 'RESET PASSWORD',
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
