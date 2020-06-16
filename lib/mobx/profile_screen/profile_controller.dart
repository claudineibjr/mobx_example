import 'package:mobx/mobx.dart';
part 'profile_controller.g.dart';

class ProfileController = _ControllerBase with _$ProfileController;

abstract class _ControllerBase with Store {
  @observable
  String name = '';

  @observable
  String surname = '';

  @computed
  String get fullName => '$name $surname';

  @action
  changeName(String newName) {
    name = newName;
  }

  @action
  changeSurname(String newSurname) {
    surname = newSurname;
  }
}
