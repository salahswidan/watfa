import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';
import 'package:watfa/features/home/presentation/screen/home_screen.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../auth/get_started/presentation/widgets/get_started_button.dart';
import '../section/bank_account_form.dart';

class BankAccountScreen extends StatelessWidget {
  const BankAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        hasBackArrow: true,
        title: "Bank Account".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            BankAccountForm(),
            Expanded(child: verticalSpacing(20)),
            GetStartedButton(
             // isComplated: true,
              text: "Add Bank information".tr(context),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.mainScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
