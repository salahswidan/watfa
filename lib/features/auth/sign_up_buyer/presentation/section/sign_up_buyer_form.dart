import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/core/helpers/app_regex.dart';
import 'package:watfa/features/auth/sign_up_buyer/logic/cubit/sign_up_buyer_cubit.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../countryPicker/logic/cubit/get_all_countries_cubit.dart';
import '../../../countryPicker/ui/country_picker.dart';
import 'password_listener.dart';

class SignUpBuyerForm extends StatefulWidget {
  const SignUpBuyerForm({
    super.key,
  });

  @override
  State<SignUpBuyerForm> createState() => _SignUpBuyerFormState();
}

class _SignUpBuyerFormState extends State<SignUpBuyerForm> {
  bool hasAtLeast8Characters = false;
  bool hasAtLeast1UpperCase = false;
  bool hasAtLeast1NumberOrSymbol = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<SignUpBuyerCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasAtLeast8Characters = AppRegex.hasMinLength(passwordController.text);
        hasAtLeast1UpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasAtLeast1NumberOrSymbol =
            AppRegex.hasNumberOrSpecialCharacter(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpBuyerCubit>().formKey,
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Username or email",
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
          AuthTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  (!AppRegex.isEmailValid(value) &&
                      !AppRegex.isUsernameValid(value))) {
                return 'Please enter a valid email or username';
              }
              return null;
            },
            suffixIcon: 'assets/svgs/username_text_field_icon.svg',
            hintText: 'Mariam Fawzy',
            controller:
                context.read<SignUpBuyerCubit>().userNameOrEmailController,
          ),
          verticalSpacing(16),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Phone number",
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
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Password",
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
          AuthTextFormField(
            isPassword: true,
            hintText: 'Password',
            controller: passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpacing(16),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Confirm Password",
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
          AuthTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value != passwordController.text) {
                return 'Please enter a valid confirm password';
              }
              return null;
            },
            isPassword: true,
            hintText: 'Confirm Password',
            controller:
                context.read<SignUpBuyerCubit>().confirmPasswordController,
          ),
          verticalSpacing(10),
          PasswordListener(
            hasAtLeast8Characters: hasAtLeast8Characters,
            hasAtLeast1UpperCase: hasAtLeast1UpperCase,
            hasAtLeast1NumberOrSymbol: hasAtLeast1NumberOrSymbol,
          ),
        ],
      ),
    );
  }
}
