import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedLottie extends StatefulWidget {
  const AnimatedLottie({
    super.key,
  });

  @override
  State<AnimatedLottie> createState() => _AnimatedLottieState();
}

class _AnimatedLottieState extends State<AnimatedLottie> {
  bool isAnimated = false;

  @override
  void initState() {
    Timer(const Duration(milliseconds: 500), () {
      setState(() {
        isAnimated = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
        duration: const Duration(milliseconds: 500),
        scale: isAnimated ? 1 : 0,
        child: Lottie.asset('assets/lottie/discount.json', width: 228,
        fit: BoxFit.fill,
        ));
  }
}
