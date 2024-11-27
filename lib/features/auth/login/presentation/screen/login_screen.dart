import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/widgets/custom_divider.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../../../core/widgets/custom_gradient_container.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';
import '../../../sign_up_buyer/presentation/section/biometric_auth.dart';
import '../section/dont_have_acc.dart';
import '../section/social_auth.dart';
import '../widget/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomGradientContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(flex: 2, child: verticalSpacing(80)),
              const Logo(),
              Flexible(child: verticalSpacing(28)),
              Text("Welcome back!",
                  style: TextStyles.font24Blackw700Roboto(context)),
              Flexible(child: verticalSpacing(18)),
              Text("Log in to existing watfa account",
                  style: TextStyles.font14DarkSilverw400Roboto(context)),
              Flexible(child: verticalSpacing(50)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username or email",
                  style: TextStyles.font14Jetw500Poppins(context),
                ),
              ),
              AuthTextFormField(
                suffixIcon: 'assets/svgs/username_text_field_icon.svg',
                hintText: 'Mariam Fawzy',
                controller: TextEditingController(),
              ),
              verticalSpacing(16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyles.font14Jetw500Poppins(context),
                ),
              ),
              AuthTextFormField(
                isPassword: true,
                hintText: 'Password',
                controller: TextEditingController(),
              ),
              verticalSpacing(10),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    context.pushNamed(Routes.forgotPasswordScreen);
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyles.font14Purplew500Poppins(context).copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              verticalSpacing(15),
              CustomAuthButton(
                onTap: () {},
                text: 'Log In',
              ),
              Flexible(child: verticalSpacing(40)),
              Text(
                "Fast and Secure login",
                style: TextStyles.font20OuterSpaceW600Poppins(context),
              ),
              Flexible(
                child: verticalSpacing(40),
              ),
              BiometricAuth(
                onTapFaceId: () {},
                onTapFingerPrint: () {},
              ),
              verticalSpacing(20),
              const CustomDivider(),
              verticalSpacing(15),
              Text(
                "sign in using",
                style: TextStyles.font15CharlestonGreenw400Roboto(context),
              ),
              verticalSpacing(14),
              const SocialAuth(),
              verticalSpacing(10),
              const DontHaveAcc(),
              verticalSpacing(20),
            ],
          ),
        ),
      ),
    );
  }
}
