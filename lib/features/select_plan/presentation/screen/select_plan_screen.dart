import 'package:flutter/material.dart';
import 'package:watfa/core/theme/styles.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';

import '../../../../core/theme/colors.dart';

class SelectPlanScreen extends StatelessWidget {
  const SelectPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        hasBackArrow: true,
        title: "Payment by Watfa",
        
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text("Equal Installment Over 3 Months",style: TextStyles.font18BlackW600Roboto(context),),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: ColorsManagers.africanViolet, width: 3),
              ),
              child: Row(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
