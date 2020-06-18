import 'package:mobx/mobx.dart';
import 'package:http/http.dart' show Response, get;

part 'show_image_controller.g.dart';

class ShowImageController = _ShowImageController with _$ShowImageController;

enum EnumState {
  IDLE,
  LOADING,
  ERROR,
}

abstract class _ShowImageController with Store {
  _ShowImageController();

  @observable
  EnumState state = EnumState.IDLE;

  @observable
  String imageURL = '';

  @observable
  String extensionURL = '';

  @observable
  String definitiveImageURL = '';

  @computed
  int get imageURLLenght {
    return imageURL.length;
  }

  @action
  changeState(EnumState newState) {
    state = newState;
  }

  @action
  changeImageURL(String newImageURL) {
    imageURL = newImageURL;
  }

  @action
  changeExtensionURL(String newExtension) {
    extensionURL = newExtension;
  }

  @action
  changeDefinetelyImageURL() {
    definitiveImageURL = imageURL;
  }

  @action
  Future<void> loadImage() async {
    changeDefinetelyImageURL();

    changeState(EnumState.LOADING);

    try {
      Response response = await get(definitiveImageURL);
      if (response.statusCode != 403)
        changeState(EnumState.IDLE);
      else
        changeState(EnumState.ERROR);
    } catch (_) {
      changeState(EnumState.ERROR);
    }
  }
}
