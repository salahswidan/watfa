
import 'package:flutter/material.dart';

import '../../../../../core/theme/styles.dart';
import '../../../login/presentation/widget/local_auth_container.dart';

class BiometricAuth extends StatelessWidget {
  final void Function() onTapFingerPrint;
  final void Function() onTapFaceId;
  const BiometricAuth({
    super.key, required this.onTapFingerPrint, required this.onTapFaceId,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LocalAuthContainer(
          image: "assets/svgs/figner_print.svg",
          onTap: onTapFingerPrint,
        ),
        Text("Or",
            style: TextStyles.font20DimGrayw500Podkova(
                context)),
        LocalAuthContainer(
          image: "assets/svgs/face_id.svg",
          onTap: onTapFaceId,
        ),
      ],
    );
  }
}
