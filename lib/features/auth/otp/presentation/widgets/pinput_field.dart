import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';

class PinputField extends StatelessWidget {
  const PinputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      defaultPinTheme: PinTheme(
        height: 50.h,
        width: 335.w,
        textStyle: TextStyles.font12RichBlackw500SpaceGrotesk,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: const GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                ColorsManagers.voliet,
                ColorsManagers.purple,
              ],
            ),
            width: 1.5,
          ),
        ),
      ),
      controller: TextEditingController(),
      onCompleted: (value) {},
    );
  }
}