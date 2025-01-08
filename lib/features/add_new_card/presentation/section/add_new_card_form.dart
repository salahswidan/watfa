import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../core/theme/styles.dart';
import '../widget/add_new_card_text_field.dart';

class AddNewCardForm extends StatelessWidget {
  const AddNewCardForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Card Holder Name".tr(context),
            style: TextStyles.font14SonicSilverW400Inter(context)),
        verticalSpacing(5),
        AddNewCardTextField(),
        verticalSpacing(20),
        Text("Card Number".tr(context),
            style: TextStyles.font14SonicSilverW400Inter(context)),
        verticalSpacing(5),
        AddNewCardTextField(
          keyboardType: TextInputType.number,
        ),
        verticalSpacing(20),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Expire Date".tr(context),
                      style: TextStyles.font14SonicSilverW400Inter(context)),
                  verticalSpacing(5),
                  AddNewCardTextField(
                    keyboardType: TextInputType.datetime,
                  ),
                ],
              ),
            ),
            horizontalSpacing(20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CVV",
                      style: TextStyles.font14SonicSilverW400Inter(context)),
                  verticalSpacing(5),
                  AddNewCardTextField(
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
