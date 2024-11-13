import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../../core/theme/colors.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 50.h,
          width: 1.sw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.r),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  ColorsManagers.lightViolet,
                  ColorsManagers.voliet,
                ]),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 90.w, vertical: 17.h),
              child: Text(text, style: TextStyles.font14Whitew700),
            ),
          )),
    );
  }
}
