import 'dart:async';

import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/model/on_boarding_model.dart';
import '../section/images_section.dart';
import '../section/title_and_description.dart';
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
            ImagesSection(
                onBoardingData: widget.onBoardingData,
                currentIndex: currentIndex,
                isOut: isOut),
            verticalSpacing(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => OnboardingDot(done: index == currentIndex),
              ),
            ),
            verticalSpacing(40),
            TitleAndDescription(
                isOut: isOut,
                onBoardingData: widget.onBoardingData,
                currentIndex: currentIndex),
            verticalSpacing(45),
            CustomButton(
              onTap: () {
                setState(() {
                  isOut = !isOut;
                });
                Timer(const Duration(milliseconds: 300), () {
                  currentIndex > 1
                      ? context.pushNamed(Routes.loginScreen)
                      : currentIndex = currentIndex + 1;

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
