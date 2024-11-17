import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../../../core/widgets/stack_shape.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';
import '../section/social_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Text("Welcome back!", style: TextStyles.font24Blackw700Roboto),
                verticalSpacing(10),
                Text("Log in to existing watfa account",
                    style: TextStyles.font14Grayw400Roboto),
                verticalSpacing(40),
                AuthTextFormField(
                  prefixIcon: 'assets/svgs/username_text_field_icon.svg',
                  hintText: 'Username/Email',
                  controller: TextEditingController(),
                ),
                verticalSpacing(30),
                AuthTextFormField(
                  prefixIcon: 'assets/svgs/password_text_field_icon.svg',
                  hintText: 'Password',
                  controller: TextEditingController(),
                ),
                verticalSpacing(8),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(Routes.forgotPasswordScreen);
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyles.font14VolietW500Roboto,
                    ),
                  ),
                ),
                verticalSpacing(50),
                CustomAuthButton(
                  onTap: () {},
                  text: 'Log In',
                ),
                verticalSpacing(40),
                Text("Or sign up using",
                    style: TextStyles.font15CharlestonGreenW400Roboto),
                verticalSpacing(14),
                const SocialAuth(),
                verticalSpacing(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyles.font16DarkLiverW400Roboto),
                    horizontalSpacing(5),
                    InkWell(
                      onTap: () {
                        context.pushNamed(Routes.signUpScreen);
                      },
                      child: Text('Sign up',
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
