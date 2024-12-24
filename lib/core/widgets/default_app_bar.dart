import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../theme/styles.dart';
import 'default_back_arrow.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final bool? hasBackArrow;
  const DefaultAppBar({
    super.key,
    this.title,
    this.hasBackArrow,
    this.titleWidget,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(45),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: hasBackArrow ?? true,
        title: title != null
            ? FadeInDown(
                child: Text(
                  title!,
                  style: TextStyles.font20PurpleW700Manrope(context),
                ),
              )
            : titleWidget != null
                ? FadeInDown(child: titleWidget!)
                : null,
        leading: hasBackArrow ?? true
            ? Padding(
                padding: const EdgeInsets.only(left: 20),
                child: FadeInLeft(child: DefaultBackArrow()),
              )
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
