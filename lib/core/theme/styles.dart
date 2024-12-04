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
  static TextStyle font20RaisinBlackw500Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.raisinBlack,
    );
  }

  static TextStyle font18SpanishGrayw500Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.spanishGray,
    );
  }
  static TextStyle font18Purplew400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.purple,
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

  static TextStyle font14DarkSilverw400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.darkSilver,
    );
  }

  static TextStyle font14Jetw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.jet,
    );
  }
  static TextStyle font14Blackw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: Colors.black,
    );
  }

  static TextStyle font14Greyw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: Colors.grey,
    );
  }
  static TextStyle font14RaisinBlackw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.raisinBlack,
    );
  }

  static TextStyle font14SacramentoStateGreenw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.sacramentoStateGreen,
    );
  }

  static TextStyle font14Purplew500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font20WhiteW600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }
  static TextStyle font20WhiteW600Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }

  static TextStyle font20OuterSpaceW600Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.outerSpace,
    );
  }

  static TextStyle font20DimGrayw500Podkova(context) {
    return GoogleFonts.podkova(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.dimGray,
    );
  }

  static TextStyle font15CharlestonGreenw400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.charlestonGreen,
    );
  }

  static TextStyle font16DarkLiverw400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.darkLiver,
    );
  }

  static TextStyle font16Purplew700Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.purple,
    );
  }


  static TextStyle font16Purplew500Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: ColorsManagers.purple,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle font10DaveGrayw300Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeightHelper.light,
      color: ColorsManagers.davysGray,
    );
  }
  static TextStyle font12w600Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeightHelper.semiBold,
     
    );
  }

  static TextStyle font12TaupeGrayw500Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.taupeGray,
    );
  }

  static TextStyle font20PhilippineGrayw500Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.philippineGray,
    );
  }
  static TextStyle font11Greyw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontWeight: FontWeightHelper.medium,
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
