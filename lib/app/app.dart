import 'package:flutter/material.dart';
import 'package:finup_app/app/theme/app_theme.dart';
import 'package:finup_app/features/start/presentation/pages/start_page.dart';

class FinUpApp extends StatelessWidget {
  const FinUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinUp',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const StartPage(),
    );
  }
}
