import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/styles.dart';
import '../../logic/on_boarding_data.dart';
import '../widgets/custom_button.dart';
import '../widgets/onboarding_dot.dart';

class BottomContainer extends StatelessWidget {
  final int currentIndex;
  final void Function() onTap;
  final bool isOut;
  const BottomContainer({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.isOut,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 29.1,
              offset: const Offset(0, 4),
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
            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isOut ? 0 : 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Text(
                  OnBoardingData.onBoardingBayer[currentIndex].title,
                  style: TextStyles.font20Blackw700Roboto,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            verticalSpacing(20),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isOut ? 0 : 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  OnBoardingData.onBoardingBayer[currentIndex].description,
                  style: TextStyles.font18Blackw400Roboto,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            verticalSpacing(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => OnboardingDot(done: index <= currentIndex),
              ),
            ),
            verticalSpacing(35),
            CustomButton(
              text: currentIndex == 2 ? "Get Started" : "NEXT",
              onTap: onTap,
            ),
            verticalSpacing(20),
            Visibility(
              visible: currentIndex != 2,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: TextStyles.font14Blackw700Roboto.copyWith(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
