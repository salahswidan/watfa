import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';

class ThirdSignUpSellerForm extends StatelessWidget {
  const ThirdSignUpSellerForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("complete your Watfa profile",
                textAlign: TextAlign.center,
                style: TextStyles.font20PhilippineGrayw500Roboto(context)),
          ),
        ),
        verticalSpacing(40.h(context)),
        Text(
          "What products or services do you provide?",
          style: TextStyles.font14RaisinBlackw500Poppins(context),
        ),
        AuthTextFormField(
          readOnly: true,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your products or services';
            }
            return null;
          },
          suffixIconWidget: InkWell(
            onTap: () => buildShowModalBottomSheet(context),
            child: Image.asset(
              "assets/svgs/Double Down.png",
              width: 23.w(context),
            ),
          ),
          hintText: "eg: Clothes, Electronics, etc",
          controller: TextEditingController(),
        ),
        verticalSpacing(35.h(context)),
        Text(
          "What platform are you using?",
          style: TextStyles.font14Blackw500Poppins(context),
        ),
        verticalSpacing(15.h(context)),
      ],
    );
  }

  buildShowModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(productsOrServices.length, (index) {
                  return ListTile(
                    title: Text(productsOrServices[index]),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  );
                }),
              ));
        });
  }

  static const List<String> productsOrServices = [
    "Clothes",
    "Electronics",
    "Furniture",
    "Food",
    "Books",
    "Beauty",
    "etc"
  ];
}
