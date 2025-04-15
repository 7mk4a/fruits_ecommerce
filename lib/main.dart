import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/helper_functions/on_generate_routes.dart';
import 'package:fruits_ecommerce/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FriutsApp());
}

class FriutsApp extends StatelessWidget {
  const FriutsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
