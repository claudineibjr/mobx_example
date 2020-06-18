// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_image_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShowImageController on _ShowImageController, Store {
  Computed<int> _$imageURLLenghtComputed;

  @override
  int get imageURLLenght =>
      (_$imageURLLenghtComputed ??= Computed<int>(() => super.imageURLLenght,
              name: '_ShowImageController.imageURLLenght'))
          .value;

  final _$stateAtom = Atom(name: '_ShowImageController.state');

  @override
  EnumState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(EnumState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$imageURLAtom = Atom(name: '_ShowImageController.imageURL');

  @override
  String get imageURL {
    _$imageURLAtom.reportRead();
    return super.imageURL;
  }

  @override
  set imageURL(String value) {
    _$imageURLAtom.reportWrite(value, super.imageURL, () {
      super.imageURL = value;
    });
  }

  final _$extensionURLAtom = Atom(name: '_ShowImageController.extensionURL');

  @override
  String get extensionURL {
    _$extensionURLAtom.reportRead();
    return super.extensionURL;
  }

  @override
  set extensionURL(String value) {
    _$extensionURLAtom.reportWrite(value, super.extensionURL, () {
      super.extensionURL = value;
    });
  }

  final _$definitiveImageURLAtom =
      Atom(name: '_ShowImageController.definitiveImageURL');

  @override
  String get definitiveImageURL {
    _$definitiveImageURLAtom.reportRead();
    return super.definitiveImageURL;
  }

  @override
  set definitiveImageURL(String value) {
    _$definitiveImageURLAtom.reportWrite(value, super.definitiveImageURL, () {
      super.definitiveImageURL = value;
    });
  }

  final _$loadImageAsyncAction = AsyncAction('_ShowImageController.loadImage');

  @override
  Future<void> loadImage() {
    return _$loadImageAsyncAction.run(() => super.loadImage());
  }

  final _$_ShowImageControllerActionController =
      ActionController(name: '_ShowImageController');

  @override
  dynamic changeState(EnumState newState) {
    final _$actionInfo = _$_ShowImageControllerActionController.startAction(
        name: '_ShowImageController.changeState');
    try {
      return super.changeState(newState);
    } finally {
      _$_ShowImageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeImageURL(String newImageURL) {
    final _$actionInfo = _$_ShowImageControllerActionController.startAction(
        name: '_ShowImageController.changeImageURL');
    try {
      return super.changeImageURL(newImageURL);
    } finally {
      _$_ShowImageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeExtensionURL(String newExtension) {
    final _$actionInfo = _$_ShowImageControllerActionController.startAction(
        name: '_ShowImageController.changeExtensionURL');
    try {
      return super.changeExtensionURL(newExtension);
    } finally {
      _$_ShowImageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDefinetelyImageURL() {
    final _$actionInfo = _$_ShowImageControllerActionController.startAction(
        name: '_ShowImageController.changeDefinetelyImageURL');
    try {
      return super.changeDefinetelyImageURL();
    } finally {
      _$_ShowImageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state},
imageURL: ${imageURL},
extensionURL: ${extensionURL},
definitiveImageURL: ${definitiveImageURL},
imageURLLenght: ${imageURLLenght}
    ''';
  }
}
