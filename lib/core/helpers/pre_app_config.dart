import 'package:flutter/widgets.dart';

import '../di/dependency_injection.dart';
import 'shared_pref_helper.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Configuration that needs to be done before the Flutter app starts goes here.
///
/// To minimize the app loading time keep this setup fast and simple.
Future<void> preAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheServices.instance.init();
   setupGetIT();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
