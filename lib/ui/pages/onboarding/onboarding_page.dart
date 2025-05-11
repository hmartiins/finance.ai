import 'package:finance_ai/main/routing/routes.dart';
import 'package:finance_ai/ui/core/themes/assets.dart';
import 'package:finance_ai/ui/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      children: [
        Expanded(child: Container()),
        Image.asset(
          Assets.onboarding,
          width: 280,
          height: 280,
        ),
        const SizedBox(height: 64),
        Text(
          'Gain total control of\nyour money',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(height: 16),
        Text(
          'Become your own money manager\nand make every cent count',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade600,
              ),
        ),
        Expanded(child: Container()),
        FilledButton(onPressed: () {}, child: Text('Sign Up')),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {
            context.push(Routes.login);
          },
          child: Text('Login'),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
