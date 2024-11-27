import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../widget/radio_list_tile.dart';

class SecondSignUpSellerForm extends StatelessWidget {
  const SecondSignUpSellerForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text("complete your Watfa profile",
              textAlign: TextAlign.center,
              style: TextStyles.font20PhilippineGrayw500Roboto(context)),
        ),
        verticalSpacing(40.h(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Countries of business operations",
            style: TextStyles.font14RaisinBlackw500Poppins(context),
          ),
        ),
        AuthTextFormField(
          hintText: 'egypt',
          controller: TextEditingController(),
        ),
        verticalSpacing(35.h(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Business type",
            style: TextStyles.font14Blackw500Poppins(context),
          ),
        ),
        verticalSpacing(25.h(context)),
        RadioListTileForm(
          title: "Registered business",
          subtitle:
              "Your business is registered as a commercial entity under the relevant authority in the country you are based in.",
        ),
        verticalSpacing(10.h(context)),
        RadioListTileForm(
          title: "Freelancer",
          subtitle:
              "You are a self-employed individual working on a sole trader or freelancer license issued by the relevant authority in the country you are based in.",
        ),
        verticalSpacing(35.h(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "In what ways do you offer your products or services to your customers?",
            style: TextStyles.font14Blackw500Poppins(context),
          ),
        ),
        verticalSpacing(15.h(context)),
        RadioListTileForm(
          title: "In-store",
          subtitle: "Physical location sales",
        ),
        verticalSpacing(10.h(context)),
        RadioListTileForm(
          title: "Online",
          subtitle: "E-commerce sales",
        ),
      ],
    );
  }
}
