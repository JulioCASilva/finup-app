import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:finup_app/core/constants/app_strings.dart';
import 'package:finup_app/features/auth/presentation/pages/login_page.dart';

void main() {
  testWidgets('deve exibir os elementos principais da tela de login', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));

    expect(find.text(AppStrings.loginTitle), findsOneWidget);
    expect(find.text(AppStrings.loginDescription), findsOneWidget);

    expect(find.text(AppStrings.email), findsOneWidget);
    expect(find.text(AppStrings.password), findsOneWidget);
    expect(find.text(AppStrings.login), findsOneWidget);

    expect(find.text(AppStrings.noAccount), findsOneWidget);
    expect(find.text(AppStrings.createAccount), findsOneWidget);
  });
}
