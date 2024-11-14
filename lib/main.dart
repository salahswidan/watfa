import 'package:flutter/material.dart';

import 'core/helpers/pre_app_config.dart';
import 'core/routing/app_router.dart';
import 'watfa_app.dart';

void main() async {
  await preAppConfig();
  
  runApp(WatfaApp(
    appRouter: AppRouter(),
  ));
}
