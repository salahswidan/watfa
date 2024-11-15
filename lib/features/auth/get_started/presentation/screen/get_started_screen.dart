import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 110.h,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(
                      'assets/images/background_asset2.png',
                      fit: BoxFit.fitHeight,
                      height: 94.h,
                    )),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/images/background_asset1.png',
                    fit: BoxFit.fitHeight,
                    height: 110.h,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                verticalSpacing(30),
                Image.asset(
                  'assets/images/Watfa_logo 4.png',
                  width: 170.w,
                  fit: BoxFit.fitWidth,
                ),
                verticalSpacing(40),
                Text("Please select profile",
                    style: TextStyles.font24Blackw700Roboto),
                verticalSpacing(10),
                Text("Create an account  to get all features",
                    style: TextStyles.font14Grayw400Roboto),
                verticalSpacing(70),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: const LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [ColorsManagers.purple, ColorsManagers.voliet]),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      
                      title: GradientText('BUYER',
                          style: TextStyles.font12w600Inter,
                          gradientDirection: GradientDirection.ttb,
                          colors: const [
                            ColorsManagers.voliet,
                            ColorsManagers.purple,
                          ]),
                      trailing: const Icon(Icons.arrow_forward_ios,
                          color: Colors.grey),
                      subtitle: Text("I want to buy products",
                          style: TextStyles.font12Blackw400Roboto),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
