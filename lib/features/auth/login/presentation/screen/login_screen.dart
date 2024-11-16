import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../../../core/widgets/stack_shape.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const StackShape(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              verticalSpacing(30),
              Image.asset(
                'assets/images/Watfa_logo 4.png',
                width: 170.w,
                fit: BoxFit.fitWidth,
              ),
              verticalSpacing(40),
              Text("Welcome back!", style: TextStyles.font24Blackw700Roboto),
              verticalSpacing(10),
              Text("Log in to existing watfa account",
                  style: TextStyles.font14Grayw400Roboto),
              verticalSpacing(40),
              AuthTextFormField(
                prefixIcon: 'assets/svgs/email_text_field_icon.svg',
                hintText: 'Username/Email',
                controller: TextEditingController(),
              ),
              verticalSpacing(30),
              AuthTextFormField(
                prefixIcon: 'assets/svgs/password_text_field_icon.svg',
                hintText: 'Password',
                controller: TextEditingController(),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
