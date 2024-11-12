import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/styles.dart';
import '../widgets/onboarding_dot.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpacing(120),
            Image.asset(
              'assets/images/onboarding1.png',
              height: 220.h,
            ),
            verticalSpacing(50),
            const Expanded(child: SizedBox()),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25), // Shadow color
                      spreadRadius: 0, // Spread radius
                      blurRadius: 29.1, // Blur radius
                      offset: const Offset(0, 4), // Offset in x and y direction
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )),
              width: 375.w,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                child: Column(
                  children: [
                    verticalSpacing(20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text(
                        "Lorem Ipsum is simply dummy text",
                        style: TextStyles.font20Blackw700,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    verticalSpacing(20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: TextStyles.font12Blackw400,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    verticalSpacing(50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OnboardingDot(done: true),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
