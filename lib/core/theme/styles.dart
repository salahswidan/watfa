import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'font_weight_helper.dart';
import 'size_config.dart';

class TextStyles {
  static TextStyle font27Blackw600Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 27),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.black,
    );
  }

  static TextStyle font27Purplew600Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 27),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font18SpanishGrayw500Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.spanishGray,
    );
  }

  static TextStyle font20Blackw700Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font24Blackw700Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font14Greyw400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: Colors.grey,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  }
  return width / 1500;
}
