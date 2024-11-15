import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../../../../core/theme/colors.dart';

class CustomAuthButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const CustomAuthButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 50.h,
          width: 1.sw,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.19),
                blurRadius: 7,
                spreadRadius: 0,
                offset: const Offset(0, 5),
              ),
            ],
            borderRadius: BorderRadius.circular(5.r),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorsManagers.voliet,
                  ColorsManagers.purple,
                ]),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 90.w, vertical: 12.h),
              child: Text(text, style: TextStyles.font16Whitew700Roboto),
            ),
          )),
    );
  }
}
