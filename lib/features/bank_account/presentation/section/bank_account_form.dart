import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../core/theme/styles.dart';
import '../../../add_new_card/presentation/widget/add_new_card_text_field.dart';


class BankAccountForm extends StatelessWidget {
  const BankAccountForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Holder Name".tr(context),
            style: TextStyles.font14SonicSilverW400Inter(context)),
        verticalSpacing(5),
        AddNewCardTextField(),
        verticalSpacing(20),
        Text("Bank Name".tr(context),
            style: TextStyles.font14SonicSilverW400Inter(context)),
        verticalSpacing(5),
        AddNewCardTextField(),
        verticalSpacing(20),
        Text("IBAN", style: TextStyles.font14SonicSilverW400Inter(context)),
        verticalSpacing(5),
        AddNewCardTextField(),
        verticalSpacing(20),
        Text("email address".tr(context),
            style: TextStyles.font14SonicSilverW400Inter(context)),
        verticalSpacing(5),
        AddNewCardTextField(
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
