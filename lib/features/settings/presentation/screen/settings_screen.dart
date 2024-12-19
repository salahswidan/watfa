import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import '../../../../core/helpers/globals.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../widget/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Settings",
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpacing(50.h(context)),
            Text("General",
                style: TextStyles.font16BlackOliverW700Manrope(context)),
            verticalSpacing(30.h(context)),
            ListView.separated(
                separatorBuilder: (context, index) => verticalSpacing(20),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: settingsCardList(context).length,
                itemBuilder: (context, index) {
                  return FadeInRight(
                    delay: Duration(milliseconds: index * 150),
                    child: SettingsCard(
                      cardModel: settingsCardList(context)[index],
                    ),
                  );
                }),
            verticalSpacing(35.h(context)),
            Text("Settings",
                style: TextStyles.font16BlackOliverW700Manrope(context)),
            verticalSpacing(30.h(context)),
            FadeInRight(
              delay: Duration(milliseconds: 5 * 150),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/Logout Rounded Left.png",
                    width: 36,
                  ),
                  horizontalSpacing(10),
                  Text("Log Out",
                      style: TextStyles.font16BlackOliverW400Manrope(context)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
