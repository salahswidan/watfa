import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/styles.dart';
import '../../../core/theme/colors.dart';
import '../../home/presentation/widget/user_image.dart';

class CustomUserMassege extends StatelessWidget {
  const CustomUserMassege({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double responsiveFontSize = MediaQuery.of(context).size.width * 0.035;
    double responsiveContainerHeight = MediaQuery.of(context).size.height * 0.2;

    return FadeInRight(
      delay: const Duration(milliseconds: 300),
      child: Container(
        width: 362.w(context),
        height: responsiveContainerHeight, // Use responsive height
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorsManagers.pink,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "The Request is Process".tr(context),
                    style: TextStyles.font20BlackW700Manropes(context),
                  ),
                  horizontalSpacing(65.w(context)),
                  UserImage(
                    isUploaded: true,
                  ),
                ],
              ),
              verticalSpacing(5.h(context)),
              Flexible(
                child: Text(
                  "Your Request Is Currently Awaiting Finalization.We kindly Seek Your Cooperation In Furnishing Your Legal And Bank Information For The Purpose Of Verification."
                      .tr(context),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize:
                        responsiveFontSize, // Dynamically adjust font size
                    fontFamily: "Arabic",
                    fontWeight: FontWeight.w400,
                  ),
                  softWrap: true, // Enable soft wrapping
                  overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                  maxLines: 4, // Limit the number of lines
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
