import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';

class FirstSignUpSellerForm extends StatelessWidget {

  const FirstSignUpSellerForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
              "Take your company to the next level",
              textAlign: TextAlign.center,
              style: TextStyles.font24Blackw700Roboto(
                  context)),
        ),
        verticalSpacing(12.h(context)),
        Text(
          "Let us start by getting to know one another better.",
          style: TextStyles.font14DarkSilverw400Roboto(
              context),
          textAlign: TextAlign.center,
        ),
        verticalSpacing(20),
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
        verticalSpacing(16.h(context)),
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
        verticalSpacing(16.h(context)),
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
        verticalSpacing(16.h(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Phone number",
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        AuthTextFormField(
          keyboardType: TextInputType.phone,
          hintText: '0122067667',
          controller: TextEditingController(),
        ),
        verticalSpacing(16.h(context)),
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
        verticalSpacing(16.h(context)),
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
        verticalSpacing(60.h(context)),
      ],
    );
  }
}
