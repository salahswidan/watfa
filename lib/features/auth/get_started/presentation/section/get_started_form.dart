import 'package:flutter/material.dart';

import '../../../../../core/helpers/shared_pref_helper.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../data/model/get_started_model.dart';
import '../widgets/custom_auth_button.dart';
import '../widgets/custom_user_type_container.dart';

class GetStartedForm extends StatefulWidget {
  const GetStartedForm({
    super.key,
  });

  @override
  State<GetStartedForm> createState() => _GetStartedFormState();
}

class _GetStartedFormState extends State<GetStartedForm> {
  int _selectedUserType = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _selectedUserType = 0;
            });
          },
          child: CustomUserTypeContainer(
            isActive: _selectedUserType == 0,
            getStartedModel: GetStartedModel(
              title: 'Buyer',
              subTitle: 'lorem ipsom lorem ipsom lorem ipsom',
              icon: 'assets/svgs/buyer_icon.svg',
            ),
          ),
        ),
        verticalSpacing(80),
        InkWell(
          onTap: () {
            setState(() {
              _selectedUserType = 1;
            });
          },
          child: CustomUserTypeContainer(
            isActive: _selectedUserType == 1,
            getStartedModel: GetStartedModel(
              title: 'Seller',
              subTitle: 'lorem ipsom lorem ipsom lorem ipsom',
              icon: 'assets/svgs/seller_icon.svg',
            ),
          ),
        ),
        verticalSpacing(90),
        CustomAuthButton(
          onTap: () {
            Future.delayed(Duration.zero, () async {
              await CacheServices.instance.setUserType(_selectedUserType == 0);
            });

            Navigator.pushNamed(context, Routes.loginScreen);
          },
          text: 'Proceed',
        ),
      ],
    );
  }
}
