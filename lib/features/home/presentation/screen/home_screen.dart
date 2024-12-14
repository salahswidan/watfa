import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/shared_pref_helper.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../section/category_home_section.dart';
import '../widget/ad_banner_container.dart';
import '../widget/app_bar_action_circle.dart';
import '../widget/default_product.dart';
import '../widget/home_background_container.dart';
import '../widget/see_more_row.dart';
import '../widget/special_offers_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: verticalSpacing(30.h(context)),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
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
                        horizontalSpacing(5),
                        Expanded(
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.scaleDown,
                            child: Text(
                                textAlign: TextAlign.start,
                                "Good Morning,${CacheServices.instance.getUserModel()?.userName ?? ""}",
                                style: TextStyles.font20RaisinBlackw500Inter(
                                    context)),
                          ),
                        ),
                        horizontalSpacing(10),
                        AppBarActionCircle(
                          icon: 'assets/svgs/notification.svg',
                          onTap: () {},
                        ),
                        horizontalSpacing(5),
                        AppBarActionCircle(
                          icon: 'assets/svgs/setting.svg',
                          onTap: () {},
                        ),
                      ]),
                ),
              ),
              SliverToBoxAdapter(
                child: AdBannerContainer(),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                verticalSpacing(40.h(context)),
              ])),
              SliverToBoxAdapter(
                child: CategoryHomeSection(),
              ),
              SliverToBoxAdapter(
                child: SeeMoreRow(
                  text: "Special Offers",
                ),
              ),
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SpecialOffersProduct(),
                            )),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SeeMoreRow(
                  text: "Fashion Offers",
                ),
              ),
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: DefaultProduct(
                                image: 'assets/images/fashion_image.png',
                                text: "baby blue blouse",
                              ),
                            )),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SeeMoreRow(
                  text: "Bags Offers",
                ),
              ),
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: DefaultProduct(
                                image: 'assets/images/bag_image.png',
                                text: "White bag",
                              ),
                            )),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SeeMoreRow(
                  text: "SkinCare Offers",
                ),
              ),
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: DefaultProduct(
                                image: 'assets/images/skincare_image.png',
                                text: "Oily skincare",
                              ),
                            )),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: verticalSpacing(30.h(context)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
