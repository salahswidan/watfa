import 'package:watfa/features/onboarding/logic/model/on_boarding_model.dart';

class OnBoardingData {
  static List<OnBoardingModel> onBoardingBayer = [
    OnBoardingModel(
      image: 'assets/images/onboarding1.png',
      title: 'Shop Now, Pay Later!',
      description:
          'Discover the freedom to buy what you love and pay in easy installments with no hidden fees.',
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding2.png',
      title: 'Flexible Payment Options',
      description:
          'Choose from multiple BNPL plans to suit your budget. Pay in 3, 6, or 12 easy installments.',
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding3.png',
      title: 'Shop Across Categories',
      description:
          'Explore a wide range of products, groceries, and dining options. Pay later, stress-free!',
    ),
  ];
  static List<OnBoardingModel> onBoardingSeller = [];
}
