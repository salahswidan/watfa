import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/styles.dart';
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
        child: Expanded(
          child: Stack(children: [
            Column(
              children: [
                verticalSpacing(20),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: isOut ? 0 : 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Text(
                      "Lorem Ipsum is simply dummy text",
                      style: TextStyles.font20Blackw700,
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
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: TextStyles.font12Blackw400,
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
                  text: "Continue",
                  onTap: onTap,
                ),
                verticalSpacing(20),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: TextStyles.font14Blackw700,
                    ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
