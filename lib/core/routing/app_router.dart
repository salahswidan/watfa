import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:watfa/features/auth/password_updated/presentation/password_updated_screen.dart';
import 'package:watfa/features/auth/sign_up_seller/presentation/screen/sign_up_seller_screen.dart';

import '../../features/auth/forget_password/presentation/screen/forget_password_screen.dart';
import '../../features/auth/get_started/presentation/screen/get_started_screen.dart';

import '../../features/auth/login/presentation/screen/login_screen.dart';
import '../../features/auth/reset_password/presentation/screen/reset_password_screen.dart';
import '../../features/auth/sign_up_buyer/logic/cubit/sign_up_buyer_cubit.dart';
import '../../features/auth/sign_up_buyer/presentation/screen/sign_up_buyer_screen.dart';
import '../../features/auth/verify/presentation/screens/verify_screen.dart';
import '../../features/home/presentation/screen/home_screen.dart';
import '../../features/onboarding/logic/on_boarding_data.dart';
import '../../features/onboarding/presentation/screen/on_boarding_screen.dart';
import '../di/dependency_injection.dart';
import '../helpers/shared_pref_helper.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(
            onBoardingData: OnBoardingData.onBoardingBayer,
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
         create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.getStartedScreen:
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());

      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordScreen(),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );

      case Routes.passwordUpdatedScreen:
        return MaterialPageRoute(
          builder: (_) => const PasswordUpdatedScreen(),
        );

      case Routes.signUpBuyerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpBuyerCubit>(),
            child: const SignUpBuyerScreen(),
          ),
        );
      case Routes.verifyScreen:
        return MaterialPageRoute(
          builder: (_) => const VerifyScreen(),
        );

      case Routes.signUpSellerScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpSellerScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
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
