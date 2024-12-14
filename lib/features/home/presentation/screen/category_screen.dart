import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../../../core/widgets/default_back_arrow.dart';
import '../section/store_row.dart';
import '../widget/category_container.dart';
import '../widget/category_divider.dart';

class CategoryScreen extends StatefulWidget {
  final int selectedCategory;
  const CategoryScreen({super.key, required this.selectedCategory});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late int selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.selectedCategory;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45),
        child: AppBar(
          elevation: 0,
          title: FadeInDown(
            child: Text(
              "Browse by category",
              style: TextStyles.font20PurpleW500Manrope(context),
            ),
          ),
          leading: FadeInLeft(child: DefaultBackArrow()),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h(context)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedCategory = index;
                                  });
                                },
                                child: CategoryContainer(
                                  isSelected: index == selectedCategory,
                                ),
                              ),
                            )),
                  ),
                ),
              ),
              CategoryDivider(),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return FadeInRight(
                        delay: Duration(milliseconds: index * 100),
                        child: StoreRow());
                  },
                  separatorBuilder: (context, index) {
                    return CategoryDivider();
                  },
                  itemCount: 5)
            ],
          ),
        ),
      ),
    );
  }
}
