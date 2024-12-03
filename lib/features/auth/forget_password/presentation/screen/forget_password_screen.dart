import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/widgets/custom_gradient_container.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../get_started/presentation/widgets/get_started_button.dart';
import '../../../login/presentation/widget/logo.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradientContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(flex: 2, child: verticalSpacing(80)),
              const Logo(),
              Flexible(flex: 2, child: verticalSpacing(60)),
              Text("Forgot Password",
                  style: TextStyles.font24Blackw700Roboto(context)),
              verticalSpacing(18),
              Text("Please enter your email to reset the password",
                  style: TextStyles.font14DarkSilverw400Roboto(context)),
              Flexible(flex: 2, child: verticalSpacing(80)),
              AuthTextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                hintText: 'Mariam Fawzy@gmail.com',
                controller: TextEditingController(),
              ),
              Flexible(flex: 3, child: verticalSpacing(120)),
              GetStartedButton(
                text: 'Verify',
                onTap: () {
                  context.pushNamed(Routes.verifyScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
