import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:finup_app/core/constants/app_strings.dart';
import 'package:finup_app/features/start/presentation/pages/start_page.dart';
import 'package:finup_app/features/auth/presentation/pages/login_page.dart';

void main() {
  testWidgets('deve exibir os principais elementos da StartPage', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: StartPage()));

    expect(find.text(AppStrings.appName), findsOneWidget);
    expect(find.text(AppStrings.startTitle), findsOneWidget);

    expect(find.text(AppStrings.startExpensesTitle), findsOneWidget);
    expect(find.text(AppStrings.startGoalsTitle), findsOneWidget);
    expect(find.text(AppStrings.startInvestmentsTitle), findsOneWidget);
    expect(find.text(AppStrings.startSharedGoalTitle), findsOneWidget);

    expect(find.text(AppStrings.createAccount), findsOneWidget);
    expect(find.text(AppStrings.alreadyHaveAccount), findsOneWidget);
  });

  testWidgets('deve navegar para LoginPage ao tocar em Já tenho conta', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        routes: {
          '/': (_) => const StartPage(),
          '/login': (_) => const LoginPage(),
        },
      ),
    );

    await tester.tap(find.text(AppStrings.alreadyHaveAccount));

    await tester.pumpAndSettle();

    expect(find.text(AppStrings.loginTitle), findsOneWidget);
  });
}
