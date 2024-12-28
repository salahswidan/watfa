
import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';

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
        title: "Bank Account",
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            
            
            BankAccountForm(),
            Expanded(child: verticalSpacing(20)),
            GetStartedButton(
              text: "Add Bank information",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
