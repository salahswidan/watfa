import 'package:flutter/material.dart';
import 'package:watfa/features/auth/get_started/data/model/get_started_model.dart';

import 'active_user_type_container.dart';
import 'in_active_user_type_container.dart';

class CustomUserTypeContainer extends StatelessWidget {
  final bool isBuyer;
  const CustomUserTypeContainer({
    super.key,
    required this.isBuyer,
  });

  @override
  Widget build(BuildContext context) {
    return isBuyer
        ? ActiveUserTypeContainer(
            getStartedModel: GetStartedModel(
              title: 'Buyer',
              subTitle: 'lorem ipsom lorem ipsom lorem ipsom',
              icon: 'assets/icons/buyer_icon.svg',
            ),
          )
        : InActiveUserTypeContainer(
            getStartedModel: GetStartedModel(
              title: 'Seller',
              subTitle: 'lorem ipsom lorem ipsom lorem ipsom',
              icon: 'assets/icons/seller_icon.svg',
            ),
          );
  }
}
