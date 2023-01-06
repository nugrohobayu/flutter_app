import 'package:mobx/mobx.dart';
part 'login.g.dart';

class Login = _Login with _$Login;

abstract class _Login with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
