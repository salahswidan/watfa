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

class ProfileForm extends StatelessWidget {
  const ProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "User name",
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        AuthTextFormField(
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
        verticalSpacing(16),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "email address",
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        AuthTextFormField(
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
        verticalSpacing(16),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Mobile Number",
            style: TextStyles.font14Jetw500Poppins(context),
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocProvider(
                create: (context) =>
                    getIt<GetAllCountriesCubit>()..getAllCountries(),
                child: CountryPicker(
                  countryflag: CacheServices.instance.getUserModel()?.country,
                  controller: TextEditingController(
                      text: CacheServices.instance.getUserModel()?.phone ?? ""),
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
        verticalSpacing(16),
      ],
    );
  }
}
