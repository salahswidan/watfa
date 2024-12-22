import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../widgets/saved_item.dart';

class SavedItemsScreen extends StatelessWidget {
  const SavedItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Saved items",
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                separatorBuilder: (context, index) => verticalSpacing(20),
                itemBuilder: (context, index) => FadeInRight(
                    delay: Duration(milliseconds: index * 200),
                    child: const SavedItem()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
