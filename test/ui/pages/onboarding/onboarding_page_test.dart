import 'package:finance_ai/ui/pages/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Widget sut;

  setUp(() {
    sut = MaterialApp(home: OnboardingPage());
  });

  testWidgets('should present the correct elements', (tester) async {
    await tester.pumpWidget(sut);
    expect(find.text('Gain total control of\nyour money'), findsOneWidget);
    expect(
        find.text('Become your own money manager\nand make every cent count'),
        findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });
}
