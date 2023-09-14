import 'package:flutter/material.dart';
import 'package:stars_movie/features/auth/presentation/screens/login_screen.dart';
import 'package:stars_movie/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:stars_movie/features/auth/presentation/screens/signup_screen.dart';
import 'package:stars_movie/features/auth/presentation/screens/splash_screen.dart';

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String resetPass = '/resetPass';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case Routes.resetPass:
        return MaterialPageRoute(builder: (context) => const ResetPassScreen());
    }
    return null;
  }
}
