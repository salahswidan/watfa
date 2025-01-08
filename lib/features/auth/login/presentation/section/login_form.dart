import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "email address".tr(context),
              style: TextStyles.font14Jetw500Poppins(context),
            ),
          ),
          AuthTextFormField(
            validator: (value) {
              if (value!.isEmpty || !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email address'.tr(context);
              }
              return null;
            },
            suffixIcon: 'assets/svgs/username_text_field_icon.svg',
            hintText: 'Email'.tr(context),
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpacing(16),
          Align(
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
            controller: context.read<LoginCubit>().passwordController,
          ),
        ],
      ),
    );
  }
}
