import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../logic/model/on_boarding_model.dart';

class ImagesSection extends StatelessWidget {
  const ImagesSection({
    super.key,
    required this.onBoardingData,
    required this.currentIndex,
    required this.isOut,
  });
  final List<OnBoardingModel> onBoardingData;
  final int currentIndex;
  final bool isOut;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 505.h(context),
      child: Stack(
        children: [
          AnimatedPositioned(
            top: onBoardingData[currentIndex].firstSmallImageTop.h(context),
            right: isOut
                ? 0
                : onBoardingData[currentIndex].firstSmallImageRight.w(context),
            duration: const Duration(milliseconds: 300),
            child: Image.asset(onBoardingData[currentIndex].firstSmallImage,
                height: onBoardingData[currentIndex]
                    .firstSmallImageHeight
                    .h(context)),
          ),
          Positioned(
            top: 165.h(context),
            child: AnimatedScale(
              scale: isOut ? 0 : 1,
              duration: const Duration(milliseconds: 300),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/purple_circle.png",
                    width: 192.w(context),
                    height: 192.h(context),
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    onBoardingData[currentIndex].image,
                    width: 412.w(context),
                    height: 313.h(context),
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            top: onBoardingData[currentIndex].secondSmallImageTop.h(context),
            right: isOut
                ? 412.w(context)
                : onBoardingData[currentIndex].secondSmallImageRight.w(context),
            duration: const Duration(milliseconds: 300),
            child: Image.asset(onBoardingData[currentIndex].secondSmallImage,
                height: onBoardingData[currentIndex]
                    .secondSmallImageHeight
                    .h(context)),
          ),
        ],
      ),
    );
  }
}
