import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/theme/colors.dart';

class DoneDot extends StatelessWidget {
  const DoneDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.h,
      width: 12.w,
      decoration: BoxDecoration(
        color: ColorsManagers.voliet,
        shape: BoxShape.circle,
      ),
    );
  }
}
