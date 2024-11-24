import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/styles.dart';
import '../../get_started/presentation/widgets/custom_auth_button.dart';

class PasswordUpdatedScreen extends StatelessWidget {
  const PasswordUpdatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //     body: SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.symmetric(horizontal: 20.w),
    //         child: Column(
    //           children: [
    //             verticalSpacing(30),
    //             Image.asset(
    //               'assets/images/Watfa_logo 4.png',
    //               width: 170.w,
    //               fit: BoxFit.fitWidth,
    //             ),
    //             verticalSpacing(40),
    //             Text("Password Updated",
    //                 style: TextStyles.font24Blackw700Roboto),
    //             verticalSpacing(60),
    //             Image.asset(
    //               'assets/images/password_updated.png',
    //               height: 255.h,
    //               fit: BoxFit.fitHeight,
    //             ),
    //             verticalSpacing(75),
    //             Text("Password Updated Successfully.",
    //                 textAlign: TextAlign.center,
    //                 style: TextStyles.font16Blackw700Roboto),
    //             verticalSpacing(35),
    //             CustomAuthButton(
    //               onTap: () {
    //                 context.pushNamedAndRemoveUntilNamed(Routes.loginScreen);
    //               },
    //               text: 'SIGN IN',
    //             ),
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // )
    );
  }
}
