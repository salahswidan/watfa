import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font20Blackw700 = GoogleFonts.spaceGrotesk(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font12Blackw400 = GoogleFonts.spaceGrotesk(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );
}
