import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  const CustomButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 52.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManagers.purple,
          ),
          child: const Center(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          )),
    );
  }
}
