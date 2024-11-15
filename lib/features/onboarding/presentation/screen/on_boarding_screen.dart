import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../logic/model/on_boarding_model.dart';
import '../section/bottom_container.dart';

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
            verticalSpacing(120),
            AnimatedScale(
              scale: isOut ? 0 : 1,
              duration: const Duration(milliseconds: 300),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Image.asset(
                  widget.onBoardingData[currentIndex].image,
                  height: 220.h,
                ),
              ),
            ),
            Flexible(child: verticalSpacing(50)),
            const Expanded(child: SizedBox()),
            BottomContainer(
              isOut: isOut,
              onBoardingData: widget.onBoardingData,
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
