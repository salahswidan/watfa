import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font20Blackw700Roboto = GoogleFonts.roboto(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font24Blackw700Roboto = GoogleFonts.roboto(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font12Blackw400Roboto = GoogleFonts.roboto(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );
  static TextStyle font14Whitew700Roboto = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle font14Grayw400Roboto = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManagers.gray,
  );
  static TextStyle font14Blackw700Roboto = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font18Blackw400Roboto = GoogleFonts.roboto(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );
}
