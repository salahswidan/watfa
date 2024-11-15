
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackShape extends StatelessWidget {
  const StackShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
