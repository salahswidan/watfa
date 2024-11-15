import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../../core/theme/styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 110.h,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(
                      'assets/images/background_asset2.png',
                      fit: BoxFit.fitHeight,
                      height: 94.h,
                    )),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/images/background_asset1.png',
                    fit: BoxFit.fitHeight,
                    height: 110.h,
                  ),
                ),
              ],
            ),
          ),
          verticalSpacing(30),
          Image.asset(
            'assets/images/Watfa_logo 4.png',
            width: 170.w,
            fit: BoxFit.fitWidth,
          ),
          verticalSpacing(40),
          Text("Please select profile",
              style: TextStyles.font24Blackw700Roboto),
          verticalSpacing(10),
          Text("Create an account  to get all features",
              style: TextStyles.font14Grayw400Roboto),
          verticalSpacing(70),
        ],
      ),
    );
  }
}
