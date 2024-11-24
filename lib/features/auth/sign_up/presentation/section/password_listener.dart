import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../../../../core/helpers/spacing.dart';

class PasswordListener extends StatelessWidget {
  const PasswordListener({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PasswordListnerItem(
          text: "At least 8 characters",
          value: true,
        ),
        verticalSpacing(18),
        const PasswordListnerItem(
          text: "1 uppercase letter",
          value: false,
        ),
        verticalSpacing(18),
        const PasswordListnerItem(
          text: "1 number or symbol",
          value: true,
        ),
      ],
    );
  }
}

class PasswordListnerItem extends StatelessWidget {
  final bool value;
  final String text;
  const PasswordListnerItem(
      {super.key, required this.value, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/svgs/check-circle.svg',
          colorFilter: !value
              ? const ColorFilter.mode(Colors.red, BlendMode.srcIn)
              : null,
        ),
        horizontalSpacing(8),
        Text(
          text,
          style: 
          value? 
          TextStyles.font10DaveGrayw300Poppins(context):
          TextStyles.font10DaveGrayw300Poppins(context).copyWith(
            color: Colors.red
          ),
        )
      ],
    );
  }
}
