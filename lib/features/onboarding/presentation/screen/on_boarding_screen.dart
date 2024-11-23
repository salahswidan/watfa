import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/routing/routes.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/styles.dart';
import '../../logic/model/on_boarding_model.dart';
import '../section/bottom_container.dart';
import '../widgets/custom_button.dart';
import '../widgets/onboarding_dot.dart';

class OnBoardingScreen extends StatefulWidget {
  final List<OnBoardingModel> onBoardingData;
  const OnBoardingScreen({super.key, required this.onBoardingData});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreen();
}

class _OnBoardingScreen extends State<OnBoardingScreen> {
  int currentIndex = 0;
  bool isOut = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 505.h,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    top: widget
                        .onBoardingData[currentIndex].firstSmallImageTop.h,
                    right: isOut
                        ? 0
                        : widget.onBoardingData[currentIndex]
                            .firstSmallImageRight.w,
                    duration: const Duration(milliseconds: 300),
                    child: Image.asset(
                        widget.onBoardingData[currentIndex].firstSmallImage,
                        height: widget.onBoardingData[currentIndex]
                            .firstSmallImageHeight.h),
                  ),
                  Positioned(
                    top: 165.h,
                    child: AnimatedScale(
                      scale: isOut ? 0 : 1,
                      duration: const Duration(milliseconds: 300),
                      child: Image.asset(
                          widget.onBoardingData[currentIndex].image,
                          width: 412.w),
                    ),
                  ),
                  AnimatedPositioned(
                    top: widget
                        .onBoardingData[currentIndex].secondSmallImageTop.h,
                    right: isOut
                        ? 412.w
                        : widget.onBoardingData[currentIndex]
                            .secondSmallImageRight.w,
                    duration: const Duration(milliseconds: 300),
                    child: Image.asset(
                        widget.onBoardingData[currentIndex].secondSmallImage,
                        height: widget.onBoardingData[currentIndex]
                            .secondSmallImageHeight.h),
                  ),
                ],
              ),
            ),
            verticalSpacing(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => OnboardingDot(done: index <= currentIndex),
              ),
            ),
            verticalSpacing(40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: isOut ? 0 : 1,
                    child: RichText(
                      text: TextSpan(
                        text: widget.onBoardingData[currentIndex].title1,
                        style: TextStyles.font27Blackw600Inter,
                        children: [
                          TextSpan(
                            text: widget.onBoardingData[currentIndex].title2,
                            style: currentIndex == 1 || currentIndex == 0
                                ? TextStyles.font27Purplew600Inter
                                : TextStyles.font27Blackw600Inter,
                          ),
                          TextSpan(
                            text: widget.onBoardingData[currentIndex].title3,
                            style: currentIndex == 2
                                ? TextStyles.font27Purplew600Inter
                                : TextStyles.font27Blackw600Inter,
                          ),
                        ],
                      ),
                    ),
                  ),
                  verticalSpacing(10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 300),
                      opacity: isOut ? 0 : 1,
                      child: Text(
                        widget.onBoardingData[currentIndex].description,
                        style: TextStyles.font18SpanishGrayw500Roboto,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpacing(45),
            CustomButton(
              onTap: () {
                setState(() {
                  isOut = !isOut;
                });
                Timer(const Duration(milliseconds: 300), () {
                  currentIndex > 1
                      ? currentIndex = 0
                      : currentIndex = currentIndex + 1;

                  setState(() {
                    isOut = !isOut;
                  });
                });
              },
            )

            // AnimatedScale(
            //   scale: isOut ? 0 : 1,
            //   duration: const Duration(milliseconds: 300),
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 20.w),
            //     child: Image.asset(
            //       widget.onBoardingData[currentIndex].image,
            //       height: 220.h,
            //     ),
            //   ),
            // ),
            // Flexible(child: verticalSpacing(50)),
            // const Expanded(child: SizedBox()),
            // BottomContainer(
            //   isOut: isOut,
            //   onBoardingData: widget.onBoardingData,
            //   currentIndex: currentIndex,
            //   onTap: () {
            //     setState(() {
            //       isOut = !isOut;
            //     });
            //     Timer(const Duration(milliseconds: 300), () {
            //       currentIndex > 1
            //           ? context.pushNamed(Routes.loginScreen)
            //           : currentIndex = currentIndex + 1;

            //       setState(() {
            //         isOut = !isOut;
            //       });
            //     });
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
