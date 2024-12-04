import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/shared_pref_helper.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../widget/ad_banner_container.dart';
import '../widget/app_bar_action_circle.dart';
import '../widget/home_background_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      Container(
                        width: 56,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: ColorsManagers.purple, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: CircleAvatar(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text(
                            "Good Morning,${CacheServices.instance.getUserModel()?.userName ?? ""}",
                            style:
                                TextStyles.font20RaisinBlackw500Inter(context)),
                      ),
                      Expanded(child: SizedBox()),
                      Row(
                        children: [
                          AppBarActionCircle(
                            icon: 'assets/svgs/notification.svg',
                            onTap: () {},
                          ),
                          horizontalSpacing(5),
                          AppBarActionCircle(
                            icon: 'assets/svgs/setting.svg',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
              SliverToBoxAdapter(
                child: AdBannerContainer(),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                verticalSpacing(60),
              ])),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: ColorsManagers.magnolia,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/category_test.png',
                                  width: 34,
                                  fit: BoxFit.fitWidth,
                                ),
                                verticalSpacing(5),
                                Text("Fashion",
                                    style: TextStyles.font10Blackw500Podkova(
                                        context)),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => horizontalSpacing(10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
