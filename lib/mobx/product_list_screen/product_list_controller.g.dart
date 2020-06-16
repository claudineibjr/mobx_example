// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductListController on _ProductListControllerBase, Store {
  Computed<int> _$allCheckedComputed;

  @override
  int get allChecked =>
      (_$allCheckedComputed ??= Computed<int>(() => super.allChecked,
              name: '_ProductListControllerBase.allChecked'))
          .value;

  final _$itemsAtom = Atom(name: '_ProductListControllerBase.items');

  @override
  ObservableList<ProductItem> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<ProductItem> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$_ProductListControllerBaseActionController =
      ActionController(name: '_ProductListControllerBase');

  @override
  dynamic addItem(ProductItem product) {
    final _$actionInfo = _$_ProductListControllerBaseActionController
        .startAction(name: '_ProductListControllerBase.addItem');
    try {
      return super.addItem(product);
    } finally {
      _$_ProductListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ProductItem product) {
    final _$actionInfo = _$_ProductListControllerBaseActionController
        .startAction(name: '_ProductListControllerBase.removeItem');
    try {
      return super.removeItem(product);
    } finally {
      _$_ProductListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items},
allChecked: ${allChecked}
    ''';
  }
}