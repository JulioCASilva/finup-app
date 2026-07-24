import 'package:flutter/material.dart';
import 'package:finup_app/app/routes/app_routes.dart';
import 'package:finup_app/app/theme/app_theme.dart';

class FinUpApp extends StatelessWidget {
  const FinUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinUp',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: AppRoutes.start,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
