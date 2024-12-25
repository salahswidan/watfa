import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
              "Country",
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
                return 'Please enter a valid country';
              }
              return null;
            },
            
            hintText: 'Country',
            controller: TextEditingController(),
          ),
        ),
        verticalSpacing(16),
       
        FadeInRight(
          delay: const Duration(milliseconds: 600),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Address",
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
                return 'Please enter a valid address';
              }
              return null;
            },
            hintText: 'Address',
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
              "Town/city",
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
                return 'Please enter a valid town/city';
              }
              return null;
            },
            hintText: 'Town/city',
            controller: TextEditingController(),
          ),
        ),
      ],
    );
  }
}
