import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';

class CustomUserTypeContainer extends StatelessWidget {
  const CustomUserTypeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        gradient: const LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [ColorsManagers.purple, ColorsManagers.voliet]),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 10.h, horizontal: 16.w),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: GradientText('BUYER',
                style: TextStyles.font12w600Inter,
                gradientDirection: GradientDirection.ttb,
                colors: const [
                  ColorsManagers.voliet,
                  ColorsManagers.purple,
                ]),
            trailing: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    ColorsManagers.purple,
                    ColorsManagers.voliet,
                  ],
                ).createShader(bounds);
              },
              child: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
            leading: SvgPicture.asset('assets/svgs/buyer_icon.svg'),
            subtitle: Text("lorem ipsom lorem ipsom lorem ipsom",
                style: TextStyles.font12Blackw400Roboto),
          ),
        ),
      ),
    );
  }
}
