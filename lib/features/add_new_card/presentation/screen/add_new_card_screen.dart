import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/styles.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';
import 'package:watfa/features/common/main_screen.dart';

import '../../../../core/theme/colors.dart';
import '../../../auth/get_started/presentation/widgets/get_started_button.dart';
import '../../../home/presentation/screen/home_screen.dart';
import '../section/add_new_card_form.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        hasBackArrow: true,
        title: "Add New Card".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeInLeft(
                  child: Text(
                    "Accepted Methods".tr(context),
                    style: TextStyles.font16DavyGrayW400Poppins(context),
                  ),
                ),
                FadeInRight(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/vise.png",
                        width: 35.w(context),
                      ),
                      horizontalSpacing(7),
                      Image.asset(
                        "assets/images/masetcard.png",
                        width: 35.w(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpacing(60),
            AddNewCardForm(),
            Expanded(child: verticalSpacing(20)),
            GetStartedButton(
             // isComplated: true,
              text: "Add Card".tr(context),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
