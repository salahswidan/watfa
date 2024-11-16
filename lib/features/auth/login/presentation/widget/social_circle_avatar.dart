import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/colors.dart';

class SocialCircleAvatar extends StatelessWidget {
  final String icon;
  const SocialCircleAvatar({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25.r,
      backgroundColor: ColorsManagers.cultured,
      child: SvgPicture.asset(
        icon,
        height: 40.h,
        fit: BoxFit.scaleDown,
        width: 40.w,
      ),
    );
  }
}
