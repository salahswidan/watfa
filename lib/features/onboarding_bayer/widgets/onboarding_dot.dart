import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/features/onboarding_bayer/widgets/not_done_dot.dart';

import 'done_dot.dart';

class OnboardingDot extends StatelessWidget {
  final bool done;
  const OnboardingDot({super.key, required this.done});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: AnimatedCrossFade(
        duration: const Duration(milliseconds: 300),
        firstChild: const NotDoneDot(),
        secondChild: const DoneDot(),
        crossFadeState:
            done ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      ),
    );
  }
}
