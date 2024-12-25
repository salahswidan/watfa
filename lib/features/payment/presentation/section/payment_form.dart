import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/core/helpers/app_regex.dart';
import 'package:watfa/core/helpers/shared_pref_helper.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../auth/countryPicker/logic/cubit/get_all_countries_cubit.dart';
import '../../../auth/countryPicker/ui/country_picker.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({
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
              "Your Name",
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
        ),
        FadeInRight(
          delay: const Duration(milliseconds: 150),
          child: AuthTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isUsernameValid(value)) {
                return 'Please enter a valid username';
              }
              return null;
            },
            suffixIcon: 'assets/svgs/username_text_field_icon.svg',
            hintText: 'User name',
            controller: TextEditingController(
                text: CacheServices.instance.getUserModel()?.userName ?? ""),
          ),
        ),
        verticalSpacing(16),
       
        FadeInRight(
          delay: const Duration(milliseconds: 600),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Phone number",
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
        ),
        IntrinsicHeight(
          child: FadeInRight(
            delay: const Duration(milliseconds: 750),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocProvider(
                  create: (context) =>
                      getIt<GetAllCountriesCubit>()..getAllCountries(),
                  child: CountryPicker(
                    countryflag: CacheServices.instance.getUserModel()?.country,
                    controller: TextEditingController(
                        text:
                            CacheServices.instance.getUserModel()?.phone ?? ""),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !AppRegex.isPhoneNumberValid(value)) {
                        return 'Please type a valid phone number';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        verticalSpacing(16),
         FadeInRight(
          delay: const Duration(milliseconds: 300),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "National ID number",
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
                return 'Please enter a valid National ID number';
              }
              return null;
            },
            suffixIcon: 'assets/svgs/username_text_field_icon.svg',
            hintText: 'National ID number',
            keyboardType: TextInputType.number,
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
              "email address",
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
        ),
        FadeInRight(
          delay: const Duration(milliseconds: 450),
          child: AuthTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            suffixIcon: 'assets/svgs/username_text_field_icon.svg',
            hintText: 'Email',
            controller: TextEditingController(
                text: CacheServices.instance.getUserModel()?.email ?? ""),
          ),
        ),
      ],
    );
  }
}
