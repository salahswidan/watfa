import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../section/bottom_container.dart';

class OnOnboardingBayerScreen extends StatefulWidget {
  const OnOnboardingBayerScreen({super.key});

  @override
  State<OnOnboardingBayerScreen> createState() => _OnOnboardingBayerScreen();
}

class _OnOnboardingBayerScreen extends State<OnOnboardingBayerScreen> {
  int currentIndex = 0;
  bool isOut = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpacing(120),
            AnimatedScale(
              scale: isOut ? 0 : 1,
              duration: const Duration(milliseconds: 300),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Image.asset(
                  'assets/images/onboarding${currentIndex + 1}.png',
                  height: 220.h,
                ),
              ),
            ),
            verticalSpacing(50),
            const Expanded(child: SizedBox()),
            BottomContainer(
              isOut: isOut,
              currentIndex: currentIndex,
              onTap: () {
                setState(() {
                  isOut = !isOut;
                });
                Timer(const Duration(milliseconds: 300), () {
                  currentIndex = currentIndex > 1 ? 0 : currentIndex + 1;

                  setState(() {
                    isOut = !isOut;
                  });
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
