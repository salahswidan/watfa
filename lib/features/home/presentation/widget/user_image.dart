import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/routing/routes.dart';

import '../../../../core/theme/colors.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    this.isUploaded,
    super.key,
  });
  final bool? isUploaded;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isUploaded == true ? 52 : 56,
      height: isUploaded == true ? 52 : 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: isUploaded == true ? Colors.white : ColorsManagers.purple,
            width: isUploaded == true ? 0 : 1),
      ),
      child: Padding(
        padding: isUploaded == true
            ? const EdgeInsets.all(0)
            : const EdgeInsets.all(3),
        child: CircleAvatar(
          backgroundColor: isUploaded == true ? Colors.white : null,
          child: Image.asset(
              isUploaded == true
                  ? "assets/images/Synchronize.png"
                  : "assets/images/campany_name.png",
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
