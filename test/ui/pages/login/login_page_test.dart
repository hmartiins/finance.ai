import 'package:finance_ai/ui/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../presentation/mock/login_rx_presenter_spy.dart';

void main() {
  late LoginPresenterSpy presenter;
  late Widget sut;

  setUp(() {
    presenter = LoginPresenterSpy();
    sut = MaterialApp(
      home: LoginPage(presenter: presenter),
    );
  });

  testWidgets('should show header text', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Login'), findsAny);
  });

  testWidgets('should present form section', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.byType(Form), findsOne);
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.text('Login'), findsAny);
  });

  testWidgets('should present forgot my password link', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Forgot Password?'), findsOne);
  });

  testWidgets('should present sign in button', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    await tester.tap(find.widgetWithText(FilledButton, 'Login'));
    expect(presenter.signInCount, 1);
  });

  testWidgets('should present register link', (tester) async {
    await tester.pumpWidget(sut);
    await tester.pump();
    expect(find.text('Don\'t have an account yet? Sign Up'), findsOne);
  });
}
