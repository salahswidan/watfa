import 'package:flutter/material.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../../core/theme/colors.dart';

class IndicatorBoxes extends StatelessWidget {
  const IndicatorBoxes({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 186,
      height: 148,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorsManagers.pinkLace,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 2,
            spreadRadius: 2,
            offset: Offset(3, 7),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorsManagers.purple,
                fontFamily: "Arabic"),
          ),
          SizedBox(height: 8),
          Image.asset("assets/images/line_indicator.png"),
          Text(
            value,
            style: TextStyles.font16greyLightw400aDLaMDisplay(context),
          ),
        ],
      ),
    );
  }
}

