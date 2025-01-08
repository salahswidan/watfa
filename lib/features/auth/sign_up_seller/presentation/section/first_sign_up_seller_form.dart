import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
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
              "Take your company to the next level".tr(context),
              textAlign: TextAlign.center,
              style: TextStyles.font24Blackw700Roboto(
                  context)),
        ),
        verticalSpacing(12.h(context)),
        Text(
          "Let us start by getting to know one another better.".tr(context),
          style: TextStyles.font14DarkSilverw400Roboto(
              context),
          textAlign: TextAlign.center,
        ),
        verticalSpacing(20),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Company name".tr(context),
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        AuthTextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your company name'.tr(context);
            }
            return null;
          },
          hintText: 'Watfa',
          controller: TextEditingController(),
        ),
        verticalSpacing(16.h(context)),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "User name".tr(context),
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        AuthTextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your username'.tr(context);
            }
            return null;
          },
          hintText: 'watfa',
          controller: TextEditingController(),
        ),
        verticalSpacing(16.h(context)),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Email address".tr(context),
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        AuthTextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your email'.tr(context);
            }
            return null;
          },
          hintText: 'mariamfawzu@gmail.com',
          controller: TextEditingController(),
        ),
        verticalSpacing(16.h(context)),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Phone number".tr(context),
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        AuthTextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your phone number'.tr(context);
            }
            return null;
          },
          keyboardType: TextInputType.phone,
          hintText: '0122067667',
          controller: TextEditingController(),
        ),
        verticalSpacing(16.h(context)),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Password".tr(context),
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        AuthTextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your password'.tr(context);
            }
            return null;
          },
          isPassword: true,
          hintText: 'Password'.tr(context),
          controller: TextEditingController(),
        ),
        verticalSpacing(16.h(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Confirm Password".tr(context),
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        AuthTextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your password'.tr(context);
            }
            return null;
          },
          isPassword: true,
          hintText: 'Confirm Password'.tr(context),
          controller: TextEditingController(),
        ),
        verticalSpacing(60.h(context)),
      ],
    );
  }
}
