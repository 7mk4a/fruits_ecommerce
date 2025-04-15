import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_ecommerce/core/helper_functions/on_generate_routes.dart';
import 'package:fruits_ecommerce/features/splash/presentation/views/splash_view.dart';
import 'package:fruits_ecommerce/generated/l10n.dart';

void main() {
  runApp(const FriutsApp());
}

class FriutsApp extends StatelessWidget {
  const FriutsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
