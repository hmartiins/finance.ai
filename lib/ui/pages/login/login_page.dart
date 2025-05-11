import 'package:finance_ai/main/routing/routes.dart';
import 'package:finance_ai/presentation/presenters/login_presenter.dart';
import 'package:finance_ai/ui/widgets/page_container.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    required this.presenter,
    super.key,
  });

  final LoginPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      isAFormPage: true,
      appBarTitle: 'Login',
      children: [
        const SizedBox(height: 64),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 24),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
          ),
          obscureText: true,
        ),
        SizedBox(height: 40),
        FilledButton(
          onPressed: () {
            presenter.signIn();
          },
          child: Text('Login'),
        ),
        SizedBox(height: 24),
        TextButton(
          onPressed: () => context.push(Routes.forgotPassword),
          child: Text(
            'Forgot Password?',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        SizedBox(height: 14),
        TextButton(
          onPressed: () => context.push(Routes.signup),
          child: Text.rich(
            TextSpan(
              text: "Don't have an account yet? ",
              style: TextStyle(color: Colors.grey.shade500),
              children: [
                TextSpan(
                  text: "Sign Up",
                  style: const TextStyle(
                    color: Colors.deepPurpleAccent,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }
}
