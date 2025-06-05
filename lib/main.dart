import 'dart:async';
import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/bindings/injection.dart';
import 'core/constants/app_constants.dart';
import 'core/routes/app_router.dart';
import 'core/theme/app_theme.dart';
import 'firebase_options.dart';
import 'shared/services/theme_service.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Future.wait([
        SystemChrome.setPreferredOrientations(const [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]),
        _setupFirebase(),
        setupInjection()
      ]);

      runApp(const MainApp());
    },
    (error, stack) => !kDebugMode
        ? FirebaseCrashlytics.instance.recordError(error, stack, fatal: true)
        : log(AppConstants.zoneErrorLog, error: error, stackTrace: stack),
  );
}

Future<void> _setupFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  if (!kDebugMode) {
    await Future.wait([
      FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true),
      FirebasePerformance.instance.setPerformanceCollectionEnabled(true),
      FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true),
    ]);
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: di<ThemeService>().themeMode,
      builder: (context, themeMode, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appTitle,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeMode,
        routerConfig: routerConfig,
      ),
    );
  }
}
