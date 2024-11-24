import 'package:flutter/material.dart';
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
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: context.screenHeight,
          width: context.screenWidth,
          child: Stack(
            children: [
              // Positioned(
              //   top: 0,
              //   left: 0,
              //   child: Image.asset(
              //     "assets/images/background_asset1.png",
              //     // width: 136.w,
              //     // height: 114.h,
              //     fit: BoxFit.fill,
              //   ),
              // ),
              // Positioned(
              //   // top: 142.h,
              //   // right: 22.w,
              //   child: Image.asset(
              //     "assets/images/background_asset2.png",
              //     // width: 81.w,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // Positioned(
              //   bottom: 0,
              //   right: 0,
              //   child: Stack(
              //     children: [
              //       Image.asset(
              //         "assets/images/background_asset3.png",
              //         width: 120,
              //       ),
              //       Positioned.fill(
              //         child: BackdropFilter(
              //           filter: ImageFilter.blur(
              //               sigmaX: 0,
              //               sigmaY: 0.0), // Adjust the blur intensity
              //           child: Container(
              //             decoration: const BoxDecoration(
              //                 color: Colors.transparent,
              //                 shape: BoxShape.circle),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Flexible(flex: 2, child: verticalSpacing(80)),
                    Image.asset(
                      'assets/images/Watfa_logo 4.png',
                      width: 170.w(context),
                      height: 30.h(context),
                      fit: BoxFit.contain,
                    ),
                    Flexible(child: verticalSpacing(28)),
                    Text("Welcome back!",
                        style: TextStyles.font24Blackw700Roboto(context)),
                    Flexible(child: verticalSpacing(18)),
                    Text("Log in to existing watfa account",
                        style: TextStyles.font14Greyw400Roboto(context)),
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
                        child: const Text(
                          'Forgot password?',
                        ),
                      ),
                    ),
                    verticalSpacing(50),
                    CustomAuthButton(
                      onTap: () {},
                      text: 'Log In',
                    ),
                    verticalSpacing(40),
                    const Text(
                      "Or sign up using",
                    ),
                    verticalSpacing(14),
                    const SocialAuth(),
                    verticalSpacing(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                        ),
                        horizontalSpacing(5),
                        InkWell(
                          onTap: () {
                            context.pushNamed(Routes.signUpScreen);
                          },
                          child: const Text(
                            'Sign up',
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
