import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';

class ShippingAddressForm extends StatelessWidget {
  const ShippingAddressForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInRight(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Country".tr(context),
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
        ),
        FadeInRight(
          delay: const Duration(milliseconds: 150),
          child: AuthTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ) {
                return 'Please enter a valid country'.tr(context);
              }
              return null;
            },
            
            hintText: 'Country'.tr(context),
            controller: TextEditingController(),
          ),
        ),
        verticalSpacing(16),
       
        FadeInRight(
          delay: const Duration(milliseconds: 600),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Address".tr(context),
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
        ),
       
        FadeInRight(
          delay: const Duration(milliseconds: 450),
          child: AuthTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ) {
                return 'Please enter a valid address'.tr(context);
              }
              return null;
            },
            hintText: 'Address'.tr(context),
            controller: TextEditingController(
            ),
          ),
        ),
        verticalSpacing(16),
         FadeInRight(
          delay: const Duration(milliseconds: 300),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Town/city".tr(context),
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
        ),
        FadeInRight(
          delay: const Duration(milliseconds: 450),
          child: AuthTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ) {
                return 'Please enter a valid town/city'.tr(context);
              }
              return null;
            },
            hintText: 'Town/city'.tr(context),
            controller: TextEditingController(),
          ),
        ),
      ],
    );
  }
}
