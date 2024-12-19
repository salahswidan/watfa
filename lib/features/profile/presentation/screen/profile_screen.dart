
import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/colors.dart';

import '../../../../core/widgets/default_app_bar.dart';
import '../../../auth/get_started/presentation/widgets/get_started_button.dart';
import '../section/profile_form.dart';
import '../widgets/user_profile_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      backgroundColor: ColorsManagers.cultured,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserProfileImage(),
              verticalSpacing(50.h(context)),
              ProfileForm(),
              verticalSpacing(70.h(context)),
              GetStartedButton(
                onTap: () {
                  context.pop();
                },
                text: 'Save Changes',
              )
            ],
          ),
        ),
      ),
    );
  }
}
