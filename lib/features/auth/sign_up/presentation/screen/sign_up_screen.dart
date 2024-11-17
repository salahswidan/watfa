import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../../../core/widgets/stack_shape.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';
import '../../../login/presentation/section/social_auth.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                Text("Let’s Get Started!",
                    style: TextStyles.font24Blackw700Roboto),
                verticalSpacing(10),
                Text("Create an account  to get all features",
                    style: TextStyles.font14Grayw400Roboto),
                verticalSpacing(40),
                AuthTextFormField(
                  prefixIcon: 'assets/svgs/username_text_field_icon.svg',
                  hintText: 'Username',
                  controller: TextEditingController(),
                ),
                verticalSpacing(30),
                AuthTextFormField(
                  prefixIcon: 'assets/svgs/email_text_field_icon.svg',
                  hintText: 'Email',
                  controller: TextEditingController(),
                ),
                verticalSpacing(30),
                AuthTextFormField(
                  prefixIcon: 'assets/svgs/password_text_field_icon.svg',
                  hintText: 'Password',
                  controller: TextEditingController(),
                ),
                verticalSpacing(40),
                CustomAuthButton(
                  onTap: () {
                    context.pushNamed(Routes.verifyScreen);
                  },
                  text: 'CREATE ACCOUNT',
                ),
                verticalSpacing(30),
                Text("Or sign up using",
                    style: TextStyles.font15CharlestonGreenW400Roboto),
                verticalSpacing(14),
                const SocialAuth(),
                verticalSpacing(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: TextStyles.font16DarkLiverW400Roboto),
                    horizontalSpacing(5),
                    InkWell(
                      onTap: () {
                        context.pushReplacementNamed(Routes.loginScreen);
                      },
                      child: Text('Login',
                          style: TextStyles.font16VolietW700Roboto),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
