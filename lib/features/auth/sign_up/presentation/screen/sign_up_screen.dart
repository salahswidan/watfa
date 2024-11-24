import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';
import '../../../login/presentation/section/social_auth.dart';
import '../../../login/presentation/widget/local_auth_container.dart';
import '../../../login/presentation/widget/logo.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Stack(
          children: [
            Padding(
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
                            style: TextStyles.font14Greyw400Roboto(context)),
                        Flexible(child: verticalSpacing(30)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Username or email",
                            style: TextStyles.font14Jetw500Poppins(context),
                          ),
                        ),
                        AuthTextFormField(
                          suffixIcon:
                              'assets/svgs/username_text_field_icon.svg',
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              context.pushNamed(Routes.forgotPasswordScreen);
                            },
                            child: Text(
                              'Forgot password?',
                              style: TextStyles.font14Purplew500Poppins(context)
                                  .copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        verticalSpacing(15),
                        CustomAuthButton(
                          onTap: () {},
                          text: 'Sign Up',
                        ),
                        Flexible(child: verticalSpacing(40)),
                        RichText(
                          text: TextSpan(
                              text: "Use",
                              style: TextStyles.font20OuterSpaceW600Poppins(
                                  context),
                              children: [
                                TextSpan(
                                  text: " Biometric",
                                  style: TextStyles.font20OuterSpaceW600Poppins(
                                          context)
                                      .copyWith(
                                    color: ColorsManagers.purple,
                                  ),
                                ),
                                TextSpan(
                                  text: " Access",
                                  style: TextStyles.font20OuterSpaceW600Poppins(
                                      context),
                                ),
                              ]),
                        ),
                        Flexible(
                          child: verticalSpacing(40),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            LocalAuthContainer(
                              image: "assets/svgs/figner_print.svg",
                              onTap: () {},
                            ),
                            Text("Or",
                                style: TextStyles.font20DimGrayw500Podkova(
                                    context)),
                            LocalAuthContainer(
                              image: "assets/svgs/face_id.svg",
                              onTap: () {},
                            ),
                          ],
                        ),
                        verticalSpacing(20),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 80.h(context)),
                          child: const Divider(
                            color: ColorsManagers.philippineSilver,
                            thickness: .5,
                          ),
                        ),
                        verticalSpacing(15),
                        Text(
                          "sign up using",
                          style: TextStyles.font15CharlestonGreenw400Roboto(
                              context),
                        ),
                        verticalSpacing(14),
                        const SocialAuth(),
                        verticalSpacing(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style:
                                  TextStyles.font16DarkLiverw400Roboto(context),
                            ),
                            horizontalSpacing(5),
                            InkWell(
                              onTap: () {
                                context.pop();
                              },
                              child: Text(
                                'Log In',
                                style:
                                    TextStyles.font16Purplew700Roboto(context)
                                        .copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
