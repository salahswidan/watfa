import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/helpers/pre_app_config.dart';
import 'core/routing/app_router.dart';
import 'watfa_app.dart';

void main() async {
  await preAppConfig();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(
    DevicePreview(    
    enabled: false,
    builder: (context) => WatfaApp(
      appRouter: AppRouter(),
    ),
  ));
}
