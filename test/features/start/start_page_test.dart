import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:finup_app/features/start/presentation/pages/start_page.dart';

void main() {
  testWidgets('deve exibir os principais elementos da StartPage', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: StartPage()));

    expect(find.text('FinUp'), findsOneWidget);
    expect(find.text('Suas finanças, simplificadas.'), findsOneWidget);

    expect(find.text('Controle seus gastos'), findsOneWidget);
    expect(find.text('Organize suas metas'), findsOneWidget);
    expect(find.text('Planeje investimentos'), findsOneWidget);
    expect(find.text('Junte dinheiro com outros'), findsOneWidget);

    expect(find.text('Criar conta'), findsOneWidget);
    expect(find.text('Já tenho conta · Entrar'), findsOneWidget);
  });
}
