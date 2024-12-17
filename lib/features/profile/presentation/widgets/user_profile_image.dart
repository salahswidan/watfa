import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watfa/core/theme/colors.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 150,
        width: 150,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ColorsManagers.purple, width: 3),
              ),
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
                right: 0,
                top: 16,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsManagers.purple,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: SvgPicture.asset(
                            "assets/svgs/profile_image_edit.svg")),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
