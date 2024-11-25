import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../get_started/presentation/widgets/get_started_button.dart';
import '../../../login/presentation/widget/logo.dart';

class SignUpSellerScreen extends StatelessWidget {
  const SignUpSellerScreen({super.key});

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
                        Flexible(flex: 2, child: verticalSpacing(90)),
                        const Logo(),
                        Flexible(child: verticalSpacing(40)),
                        Text("Take your company to the next level with",
                            style: TextStyles.font24Blackw700Roboto(context)),
                        Flexible(child: verticalSpacing(11)),
                        Text(
                            "Let us start by getting to know one another better.",
                            style:
                                TextStyles.font14DarkSilverw400Roboto(context)),
                        Flexible(child: verticalSpacing(20)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Company name",
                            style: TextStyles.font14Jetw500Poppins(context),
                          ),
                        ),
                        AuthTextFormField(
                          hintText: 'Watfa',
                          controller: TextEditingController(),
                        ),
                        verticalSpacing(16),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "User name",
                            style: TextStyles.font14Jetw500Poppins(context),
                          ),
                        ),
                        AuthTextFormField(
                          hintText: 'watfa',
                          controller: TextEditingController(),
                        ),
                        verticalSpacing(16),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email address",
                            style: TextStyles.font14Jetw500Poppins(context),
                          ),
                        ),
                        AuthTextFormField(
                          hintText: 'mariamfawzu@gmail.com',
                          controller: TextEditingController(),
                        ),
                        verticalSpacing(16),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "phone number",
                            style: TextStyles.font14Jetw500Poppins(context),
                          ),
                        ),
                        AuthTextFormField(
                          keyboardType: TextInputType.phone,
                          hintText: '0122067667',
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
                        Flexible(child: verticalSpacing(60)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: GetStartedButton(
                            text: 'Next',
                            onTap: () {},
                          ),
                        ),
                        Flexible(flex: 2, child: verticalSpacing(90)),
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
