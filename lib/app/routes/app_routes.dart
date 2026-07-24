import 'package:flutter/material.dart';
import 'package:finup_app/features/start/presentation/pages/start_page.dart';
import 'package:finup_app/features/auth/presentation/pages/login_page.dart';
import 'package:finup_app/features/auth/presentation/pages/register_page.dart';

abstract final class AppRoutes {
  static const String start = '/';
  static const String login = '/login';
  static const String register = '/register';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case start:
        return MaterialPageRoute(builder: (_) => const StartPage());

      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());

      default:
        return MaterialPageRoute(builder: (_) => const StartPage());
    }
  }
}
