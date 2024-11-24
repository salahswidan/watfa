import 'package:flutter/material.dart';

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
      // height: 505.h,
      // child: Stack(
      //   children: [
      //     AnimatedPositioned(
      //       top: onBoardingData[currentIndex].firstSmallImageTop.h,
      //       right:
      //           isOut ? 0 : onBoardingData[currentIndex].firstSmallImageRight.w,
      //       duration: const Duration(milliseconds: 300),
      //       child: Image.asset(onBoardingData[currentIndex].firstSmallImage,
      //           height: onBoardingData[currentIndex].firstSmallImageHeight.h),
      //     ),
      //     Positioned(
      //       top: 165.h,
      //       child: AnimatedScale(
      //         scale: isOut ? 0 : 1,
      //         duration: const Duration(milliseconds: 300),
      //         child: Stack(
      //           alignment: Alignment.center,
      //           children: [
      //             Image.asset(
      //               "assets/images/purple_circle.png",
      //               // width: 192.w,
      //             ),
      //             Image.asset(
      //               onBoardingData[currentIndex].image,
      //               // width: 412.w,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     AnimatedPositioned(
      //       top: onBoardingData[currentIndex].secondSmallImageTop.h,
      //       right: isOut
      //           ? 412.w
      //           : onBoardingData[currentIndex].secondSmallImageRight.w,
      //       duration: const Duration(milliseconds: 300),
      //       child: Image.asset(onBoardingData[currentIndex].secondSmallImage,
      //           height: onBoardingData[currentIndex].secondSmallImageHeight.h),
      //     ),
      //   ],
      // ),
    );
  }
}
