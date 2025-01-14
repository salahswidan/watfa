import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../theme/colors.dart';

class DefaultBackArrow extends StatelessWidget {
  const DefaultBackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManagers.purple,
          ),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
    );
  }
}
