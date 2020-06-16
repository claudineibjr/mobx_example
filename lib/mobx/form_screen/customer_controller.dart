import 'package:mobx/mobx.dart';
part 'customer_controller.g.dart';

class CustomerController = _ControllerBase with _$CustomerController;

abstract class _ControllerBase with Store {
  @observable
  String name;

  @observable
  String email;

  @action
  changeName(String newName) {
    name = newName;
  }

  @action
  changeEmail(String newEmail) {
    email = newEmail;
  }

  @computed
  bool get canContinue {
    return name != null &&
        email != null &&
        validateName() == null &&
        validateEmail() == null;
  }

  String validateName() {
    if (name != null) {
      if (name.isEmpty) {
        return 'Insira um nome válido';
      } else if (name.length <= 3) {
        return 'O nome deve ter mais de 3 caracteres';
      }
    }

    return null;
  }

  String validateEmail() {
    if (email != null) {
      if (email.isEmpty) {
        return 'Insira um email válido';
      } else if (email.length <= 3) {
        return 'O e-mail deve ter mais de 3 caracteres';
      } else if (!email.contains('@')) {
        return 'Insira um email válido';
      }
    }

    return null;
  }
}
