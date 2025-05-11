import 'package:finance_ai/presentation/presenters/login_presenter.dart';

final class LoginPresenterSpy implements LoginPresenter {
  int signInCount = 0;

  @override
  void signIn() {
    signInCount++;
  }
}
