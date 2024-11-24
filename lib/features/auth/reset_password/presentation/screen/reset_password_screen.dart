import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                verticalSpacing(30),
                Image.asset(
                  'assets/images/Watfa_logo 4.png',
                  width: 170,
                  fit: BoxFit.fitWidth,
                ),
                verticalSpacing(40),
                verticalSpacing(10),
                verticalSpacing(40),
                AuthTextFormField(
                  prefixIcon: 'assets/svgs/password_text_field_icon.svg',
                  hintText: 'Password',
                  controller: TextEditingController(),
                ),
                verticalSpacing(30),
                AuthTextFormField(
                  prefixIcon: 'assets/svgs/password_text_field_icon.svg',
                  hintText: 'Confirm Password',
                  controller: TextEditingController(),
                ),
                verticalSpacing(50),
                CustomAuthButton(
                  onTap: () {
                    context.pushNamed(Routes.passwordUpdatedScreen);
                  },
                  text: 'UPDATE',
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
