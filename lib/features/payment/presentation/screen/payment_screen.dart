import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/colors.dart';
import 'package:watfa/features/auth/get_started/presentation/widgets/get_started_button.dart';
import 'package:watfa/features/payment/logic/model/container_model.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../section/payment_form.dart';
import '../widgets/payment_container.dart';

class PaymentScreen extends StatefulWidget {
  static final List<ContainerModel> data = [
    ContainerModel(
        title: "Equal Installments Over 2 Months",
        description:
            "The total amount of \$336 is divided into two equal payments of \$84 each."),
    ContainerModel(
        title: "Equal Installments Over 3 Months",
        description:
            "The total amount of \$336 is divided into two equal payments of \$84 each."),
    ContainerModel(
        title: "Equal Installments Over 6 Months",
        description:
            "The total amount of \$336 is divided into two equal payments of \$84 each."),
  ];
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selected = 0;
  int selectedIndexSection = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Payment by Watfa",
        hasBackArrow: false,
      ),
      backgroundColor: ColorsManagers.cultured,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                selectedIndexSection == 0
                    ? ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = index;
                              });
                            },
                            child: FadeInRight(
                              delay: Duration(milliseconds: index * 150),
                              child: PaymentContainer(
                                model: PaymentScreen.data[index],
                                isSelected: selected == index,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return verticalSpacing(25);
                        },
                        itemCount: PaymentScreen.data.length)
                    : PaymentForm(),
                GetStartedButton(
                    onTap: () {
                      selectedIndexSection == 0
                          ? setState(() {
                              selectedIndexSection = 1;
                            })
                          : context.pushNamed(Routes.verifyScreen,arguments: true);
                    },
                    text: selectedIndexSection == 0
                        ? "Continue"
                        : "Verification"),
                verticalSpacing(1)
              ]),
        ),
      ),
    );
  }
}
