// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductItem on _ProductItemBase, Store {
  final _$titleAtom = Atom(name: '_ProductItemBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$checkedAtom = Atom(name: '_ProductItemBase.checked');

  @override
  bool get checked {
    _$checkedAtom.reportRead();
    return super.checked;
  }

  @override
  set checked(bool value) {
    _$checkedAtom.reportWrite(value, super.checked, () {
      super.checked = value;
    });
  }

  final _$_ProductItemBaseActionController =
      ActionController(name: '_ProductItemBase');

  @override
  dynamic setTitle(String newValue) {
    final _$actionInfo = _$_ProductItemBaseActionController.startAction(
        name: '_ProductItemBase.setTitle');
    try {
      return super.setTitle(newValue);
    } finally {
      _$_ProductItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setChecked(bool newValue) {
    final _$actionInfo = _$_ProductItemBaseActionController.startAction(
        name: '_ProductItemBase.setChecked');
    try {
      return super.setChecked(newValue);
    } finally {
      _$_ProductItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
checked: ${checked}
    ''';
  }
}
