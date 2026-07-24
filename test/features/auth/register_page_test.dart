import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:finup_app/core/constants/app_strings.dart';
import 'package:finup_app/features/auth/presentation/pages/register_page.dart';

void main() {
  testWidgets('deve exibir os elementos principais da tela de cadastro', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: RegisterPage()));

    expect(find.text(AppStrings.registerTitle), findsOneWidget);
    expect(find.text(AppStrings.registerDescription), findsOneWidget);

    expect(find.text(AppStrings.email), findsOneWidget);
    expect(find.text(AppStrings.password), findsOneWidget);
    expect(find.text(AppStrings.confirmPassword), findsOneWidget);

    expect(find.text(AppStrings.createAccount), findsOneWidget);
    expect(find.text(AppStrings.alreadyHaveAccountQuestion), findsOneWidget);
    expect(find.text(AppStrings.enter), findsOneWidget);
  });
}
