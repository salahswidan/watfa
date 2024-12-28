import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class AddNewCardTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  const AddNewCardTextField({
    super.key,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      style: TextStyles.font16OnyxW400Manrope(context),
      decoration: InputDecoration(
        border: border(),
        enabledBorder: border(),
        focusedBorder: border(),
        fillColor: ColorsManagers.aliceBlue,
        filled: true,
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: ColorsManagers.purple,
      ),
    );
  }
}
