// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CustomerController on _ControllerBase, Store {
  Computed<bool> _$canContinueComputed;

  @override
  bool get canContinue =>
      (_$canContinueComputed ??= Computed<bool>(() => super.canContinue,
              name: '_ControllerBase.canContinue'))
          .value;

  final _$nameAtom = Atom(name: '_ControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_ControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase');

  @override
  dynamic changeName(String newName) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.changeName');
    try {
      return super.changeName(newName);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String newEmail) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.changeEmail');
    try {
      return super.changeEmail(newEmail);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
canContinue: ${canContinue}
    ''';
  }
}
