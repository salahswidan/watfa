import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/theme/colors.dart';

class NotDoneDot extends StatelessWidget {
  const NotDoneDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.h,
      width: 13.w,
      decoration: const BoxDecoration(
        color: ColorsManagers.philippineSilver,
        shape: BoxShape.circle,
      ),
    );
  }
}
