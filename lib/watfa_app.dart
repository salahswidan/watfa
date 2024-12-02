import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/helpers/shared_pref_helper.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class WatfaApp extends StatelessWidget {
  final AppRouter appRouter;
  const WatfaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Watfa App',
      theme: ThemeData(
        // primaryColor: ColorsManagers.mainblue,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute:
          // CacheServices.instance.getUserType() != null
          //     ? Routes.onBoardingScreen
          //     :
          Routes.onBoardingScreen,
      // initialRoute: CacheServices.instance.getOnBoarding()
      //     ? CacheServices.instance.getUserModel() != null
      //         ? Routes.homeScreen
      //         : Routes.loginScreen
      //     : Routes.onBoardingScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
