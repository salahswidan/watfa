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
  static List<OnBoardingModel> onBoardingSeller = [
    OnBoardingModel(
      image: 'assets/images/onboarding_seller1.png',
      title: 'Boost Your Sales with BNPL',
      description:
          'Join thousands of merchants growing their business by offering Buy Now, Pay Later options.',
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding_seller2.png',
      title: 'Increase Customer Spend',
      description:
          'Attract more customers by allowing them to pay in easy installments. Watch your sales soar!',
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding_seller3.png',
      title: 'Easy Order & Payment Management',
      description:
          'Manage your products, track orders, and receive payouts—all from a single dashboard.',
    ),
  ];
}
