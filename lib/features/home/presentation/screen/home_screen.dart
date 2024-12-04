import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/shared_pref_helper.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../widget/ad_banner_container.dart';
import '../widget/app_bar_action_circle.dart';
import '../widget/category_container.dart';
import '../widget/default_product.dart';
import '../widget/home_background_container.dart';
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
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: false,
                elevation: 0,
                centerTitle: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
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
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                              "Good Morning,${CacheServices.instance.getUserModel()?.userName ?? ""}",
                              style: TextStyles.font20RaisinBlackw500Inter(
                                  context)),
                        ),
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
                verticalSpacing(40.h(context)),
              ])),
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CategoryContainer(),
                            )),
                  ),
                ),
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

class SeeMoreRow extends StatelessWidget {
  final String text;
  const SeeMoreRow({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyles.font24BlackOliveW700Manrope(context)),
          Text(
            "See More",
            style: TextStyles.font14PurpleW700Manrope(context).copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
