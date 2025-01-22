import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../section/category_discount_section.dart';
import '../widget/animated_lottie.dart';
import '../widget/discount_app_bar.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({super.key});

  @override
  State<DiscountScreen> createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorsManagers.lavender,
              ColorsManagers.cultured,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        height: context.screenHeight,
        width: context.screenWidth,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DiscountAppBar(),
                  AnimatedLottie(),
                  CategoryDiscountSection(
                    selectedCategory: 0,
                  ),
                  verticalSpacing(20)
                ],
              ),
            ),
          ),
        ));
  }
}
