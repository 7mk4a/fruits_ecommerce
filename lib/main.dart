import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_ecommerce/core/helper_functions/on_generate_routes.dart';
import 'package:fruits_ecommerce/core/services/custom_bloc_observer.dart';
import 'package:fruits_ecommerce/core/services/getit_service.dart';
import 'package:fruits_ecommerce/core/services/shared_preferences_singleton.dart';
import 'package:fruits_ecommerce/core/utils/app_colors.dart';
import 'package:fruits_ecommerce/features/splash/presentation/views/splash_view.dart';
import 'package:fruits_ecommerce/firebase_options.dart';
import 'package:fruits_ecommerce/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = CustomBlocObserver();
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      name: 'name-here',
      options: DefaultFirebaseOptions.currentPlatform,
    );

    setupGetit();
  }

  await Prefs.init();
  runApp(const FriutsApp());
}

class FriutsApp extends StatelessWidget {
  const FriutsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Cairo',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
