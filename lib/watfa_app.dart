import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class WatfaApp extends StatelessWidget {
  final AppRouter appRouter;
  const WatfaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctor App',
        theme: ThemeData(
          // primaryColor: ColorsManagers.mainblue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        // initialRoute: CacheServices.instance.getOnBoarding()
        //     ? CacheServices.instance.getUserModel() != null
        //         ? Routes.homeScreen
        //         : Routes.loginScreen
        //     : Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
