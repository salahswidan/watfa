import 'package:flutter/material.dart';
import 'package:watfa/features/auth/otp/presentation/screen/otp_screen.dart';

import '../../features/auth/forget_password/presentation/screen/forget_password_screen.dart';
import '../../features/auth/get_started/presentation/screen/get_started_screen.dart';

import '../../features/auth/login/presentation/screen/login_screen.dart';
import '../../features/onboarding/logic/on_boarding_data.dart';
import '../../features/onboarding/presentation/screen/on_boarding_screen.dart';
import '../helpers/shared_pref_helper.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(
            onBoardingData: CacheServices.instance.getUserType()!
                ? OnBoardingData.onBoardingBayer
                : OnBoardingData.onBoardingSeller,
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.getStartedScreen:
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());

      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordScreen(),
        );
      case Routes.otpScreen:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );
      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider(
      //             create: (context) => getit<HomeCubit>()
      //               ..getSpecializations()
      //               ..getDoctorRecommendations(),
      //             child: const HomeScreen(),
      //           ));
      // case Routes.notificationScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const NotificationScreen(),
      //   );
      // case Routes.doctorsSpecialtyScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => DoctorSpecialityScreen(
      //       specializationsList: arguments! as List<SpecializationData>,
      //     ),
      //   );
      // case Routes.doctorsRecommendationScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => DoctorRecommendationScreen(
      //       doctorRecomendations: arguments! as List<DoctorRecomendationData>,
      //     ),
      //   );
      // case Routes.forgotPasswordScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const ForgetPasswordScreen(),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => const GetStartedScreen(),
        );
    }
  }
}
