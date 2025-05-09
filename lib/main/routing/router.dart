import 'package:finance_ai/main/factories/ui/pages/onboarding_page_factory.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.onboarding,
  debugLogDiagnostics: true,
  observers: [],
  routes: [
    GoRoute(path: Routes.onboarding, builder: (_, __) => makeOnboardingPage()),
  ],
);
