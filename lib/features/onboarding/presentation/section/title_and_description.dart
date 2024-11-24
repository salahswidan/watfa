import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isOut ? 0 : 1,
            child: RichText(
              text: TextSpan(
                text: onBoardingData[currentIndex].title1,
                style: TextStyles.font27Blackw600Inter(context),
                children: [
                  TextSpan(
                    text: onBoardingData[currentIndex].title2,
                    style: currentIndex == 1 || currentIndex == 0
                        ? TextStyles.font27Purplew600Inter(context)
                        : TextStyles.font27Blackw600Inter(context),
                  ),
                  TextSpan(
                    text: onBoardingData[currentIndex].title3,
                    style: currentIndex == 2
                        ? TextStyles.font27Purplew600Inter(context)
                        : TextStyles.font27Blackw600Inter(context),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: verticalSpacing(10)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isOut ? 0 : 1,
              child: Text(
                onBoardingData[currentIndex].description,
                style: TextStyles.font20SpanishGrayw500Roboto(context),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
