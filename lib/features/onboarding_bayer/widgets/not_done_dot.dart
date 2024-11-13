import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotDoneDot extends StatelessWidget {
  const NotDoneDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.h,
      width: 12.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
      ),
    );
  }
}
