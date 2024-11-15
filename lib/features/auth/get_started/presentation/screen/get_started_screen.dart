import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/stack_shape.dart';
import '../section/get_started_form.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                Text("Please select profile",
                    style: TextStyles.font24Blackw700Roboto),
                verticalSpacing(10),
                Text("Create an account  to get all features",
                    style: TextStyles.font14Grayw400Roboto),
                verticalSpacing(70),
                const GetStartedForm()
              ],
            ),
          )
        ],
      ),
    );
  }
}
