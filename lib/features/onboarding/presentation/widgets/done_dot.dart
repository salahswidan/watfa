import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/theme/colors.dart';

class DoneDot extends StatelessWidget {
  const DoneDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.h,
      width: 13.w,
      decoration: const BoxDecoration(
        color: ColorsManagers.purple,
        shape: BoxShape.circle,
      ),
    );
  }
}
