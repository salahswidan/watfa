import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/theme/colors.dart';
import 'package:watfa/core/theme/styles.dart';

class GetStartedButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const GetStartedButton({super.key ,required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 50,
        width: context.screenWidth,
        decoration: BoxDecoration(
          color: ColorsManagers.purple,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.font20WhiteW600Poppins(context),
          ),
        ),
      ),
    );
  }
}
