import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../get_started/presentation/widgets/get_started_button.dart';
import '../../../login/presentation/widget/logo.dart';
import '../section/sign_up_seller_form.dart';

class SignUpSellerScreen extends StatefulWidget {
  const SignUpSellerScreen({super.key});

  @override
  State<SignUpSellerScreen> createState() => _SignUpSellerScreenState();
}

class _SignUpSellerScreenState extends State<SignUpSellerScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        verticalSpacing(90.h(context)),
                        const Logo(),
                        verticalSpacing(40.h(context)),
                        SignUpSellerForm(
                          currentIndex: currentIndex,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: GetStartedButton(
                            text: currentIndex == 0 ? 'Next' : 'Submit',
                            onTap: () {
                              currentIndex == 0
                                  ? setState(() {
                                      currentIndex++;
                                    })
                                  : context.pushNamed(Routes.loginScreen);
                            },
                          ),
                        ),
                        verticalSpacing(60.h(context)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
