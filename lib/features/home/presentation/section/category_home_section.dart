import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/routing/routes.dart';
import '../../../category/presentation/widget/category_container.dart';

class CategoryHomeSection extends StatelessWidget {
  const CategoryHomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            10,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.categoryScreen,
                          arguments: index);
                    },
                    child: CategoryContainer(
                      isSelected: false,
                    ),
                  ),
                )),
      ),
    );
  }
}
