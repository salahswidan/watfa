import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/features/onboarding/widgets/not_done_dot.dart';

import 'done_dot.dart';

class OnboardingDot extends StatelessWidget {
  final bool done;
  const OnboardingDot({super.key, required this.done});

  @override
  Widget build(BuildContext context) {
    return done ? const DoneDot() : const NotDoneDot();
  }
}
