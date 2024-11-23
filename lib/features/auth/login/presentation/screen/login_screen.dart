import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';
import '../section/social_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const Positioned(
          top: 0,
          left: 0,
          child: BlurImage(
            image: "assets/images/background_asset1.png",
          ),
        ),
        Positioned(
          top: 142.h,
          right: 22.w,
          child: Image.asset(
            "assets/images/background_asset2.png",
            width: 81.w,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            "assets/images/background_asset3.png",
            width: 121.w,
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              verticalSpacing(80),
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
                    verticalSpacing(28),
                    Text("Welcome back!",
                        style: TextStyles.font24Blackw700Roboto),
                    verticalSpacing(18),
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
        ),
      ],
    ));
  }
}

class BlurImage extends StatelessWidget {
  final String image;
  const BlurImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          width: 136.w,
          height: 114.h,
          fit: BoxFit.fill,
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 70, sigmaY: 70.0), // Adjust the blur intensity
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.circle),
            ),
          ),
        ),
      ],
    );
  }
}
