import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watfa/core/helpers/shared_pref_helper.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../widget/app_bar_action_circle.dart';
import '../widget/home_background_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                    "Good Morning,${CacheServices.instance.getUserModel().then(
                          (value) => value!.userName,
                        )}",
                    style: TextStyles.font20RaisinBlackw500Inter(context)),
                backgroundColor: Colors.transparent,
                leading: Container(
                  width: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorsManagers.purple, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: CircleAvatar(),
                  ),
                ),
                actions: [
                  AppBarActionCircle(
                    icon: 'assets/svgs/notification.svg',
                    onTap: () {},
                  ),
                  horizontalSpacing(5),
                  AppBarActionCircle(
                    icon: 'assets/svgs/settings.svg',
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
