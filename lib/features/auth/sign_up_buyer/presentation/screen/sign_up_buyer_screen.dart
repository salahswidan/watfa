import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../../../core/widgets/custom_divider.dart';
import '../../../../../core/widgets/custom_gradient_container.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';
import '../../../login/presentation/section/social_auth.dart';
import '../../../login/presentation/widget/logo.dart';
import '../section/already_have_an_account.dart';
import '../section/biometric_auth.dart';
import '../section/password_listener.dart';
import '../section/use_biometric_access.dart';

class SignUpBuyerScreen extends StatelessWidget {
  const SignUpBuyerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomGradientContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Flexible(flex: 2, child: verticalSpacing(60)),
                    const Logo(),
                    Flexible(child: verticalSpacing(28)),
                    Text("Let’s Get Started!",
                        style: TextStyles.font24Blackw700Roboto(context)),
                    Flexible(child: verticalSpacing(18)),
                    Text("Create an account  to get all features",
                        style: TextStyles.font14DarkSilverw400Roboto(context)),
                    Flexible(child: verticalSpacing(30)),
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
                        "Phone number",
                        style: TextStyles.font14Jetw500Poppins(context),
                      ),
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
                    verticalSpacing(16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirm Password",
                        style: TextStyles.font14Jetw500Poppins(context),
                      ),
                    ),
                    AuthTextFormField(
                      isPassword: true,
                      hintText: 'Confirm Password',
                      controller: TextEditingController(),
                    ),
                    verticalSpacing(10),
                    const PasswordListener(),
                    verticalSpacing(25),
                    CustomAuthButton(
                      onTap: () {},
                      text: 'Sign Up',
                    ),
                    Flexible(child: verticalSpacing(40)),
                    const UseBiometricAccess(),
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
                      "sign up using",
                      style:
                          TextStyles.font15CharlestonGreenw400Roboto(context),
                    ),
                    verticalSpacing(14),
                    const SocialAuth(),
                    verticalSpacing(10),
                    const AlreadyHaveAnAccount(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
