import 'package:finance_ai/presentation/presenters/rx/login_rx_presenter.dart';
import 'package:finance_ai/ui/pages/login/login_page.dart';

import 'package:flutter/material.dart';

Widget makeLoginPage() {
  final presenter = LoginRxPresenter();
  return LoginPage(presenter: presenter);
}
