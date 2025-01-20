import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/routing/routes.dart';
import '../../../core/theme/colors.dart';
import '../section/custom_user_note.dart';
import '../widgets/step_progress_widget.dart';
import '../widgets/seller_home_app_bar.dart';

class SellerHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManagers.cultured,
      appBar: SellerHomeAppBar(
        isDone: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpacing(52.h(context)),
          Center(
            child: StepProgressWidget(
              steps: [
                StepData(title: "Business".tr(context), isActive: true),
                StepData(
                  title: "Legal".tr(context),
                  isActive: false,
                  stepNumber: 2,
                  onTapNav: () {
                    Navigator.of(context).pushNamed(Routes.legalScreen);
                  },
                ),
                StepData(
                    title: "Bank".tr(context),
                    isActive: false,
                    stepNumber: 3,
                    onTapNav: () {
                      // Navigator.of(context)
                      //     .pushNamed(Routes.bankInformationScreen);
                    }),
              ],
            ),
          ),
          verticalSpacing(41.h(context)),
          Center(child: CustomUserMassege())
        ],
      ),
    );
  }
}
