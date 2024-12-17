import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import '../../../../core/helpers/globals.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/default_back_arrow.dart';
import '../widget/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45),
        child: AppBar(
          elevation: 0,
          title: FadeInDown(
            child: Text(
              "Settings",
              style: TextStyles.font20PurpleW500Manrope(context),
            ),
          ),
          leading: FadeInLeft(child: DefaultBackArrow()),
        ),
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
                itemCount: settingsCardList.length,
                itemBuilder: (context, index) {
                  return FadeInRight(
                    delay: Duration(milliseconds: index * 150),
                    child: SettingsCard(
                      cardModel: settingsCardList[index],
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
