import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/login_view.dart';
import 'package:fruits_ecommerce/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_ecommerce/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    default:
      return MaterialPageRoute(builder: (context) => const Placeholder());
  }
}
