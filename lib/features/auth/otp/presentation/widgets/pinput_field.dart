import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';

class PinputField extends StatelessWidget {
  const PinputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      defaultPinTheme: PinTheme(
        height: 50,
        width: 335,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: const GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                ColorsManagers.voliet,
                ColorsManagers.purple,
              ],
            ),
            width: 1.5,
          ),
        ),
      ),
      controller: TextEditingController(),
      onCompleted: (value) {},
    );
  }
}