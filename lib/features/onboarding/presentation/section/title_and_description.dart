import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/styles.dart';
import '../../logic/model/on_boarding_model.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    super.key,
    required this.isOut,
    required this.onBoardingData,
    required this.currentIndex,
  });

  final bool isOut;
  final int currentIndex;
  final List<OnBoardingModel> onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isOut ? 0 : 1,
            child: RichText(
              text: TextSpan(
                text: onBoardingData[currentIndex].title1,
                style: TextStyles.font27Blackw600Inter,
                children: [
                  TextSpan(
                    text: onBoardingData[currentIndex].title2,
                    style: currentIndex == 1 || currentIndex == 0
                        ? TextStyles.font27Purplew600Inter
                        : TextStyles.font27Blackw600Inter,
                  ),
                  TextSpan(
                    text: onBoardingData[currentIndex].title3,
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
                onBoardingData[currentIndex].description,
                style: TextStyles.font18SpanishGrayw500Roboto,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
