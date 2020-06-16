import 'package:mobx/mobx.dart';
part 'product_item.g.dart';

class ProductItem = _ProductItemBase with _$ProductItem;

abstract class _ProductItemBase with Store {
  _ProductItemBase({
    this.title,
    this.checked: false,
  });

  @observable
  String title;

  @observable
  bool checked;

  @action
  setTitle(String newValue) => title = newValue;

  @action
  setChecked(bool newValue) => checked = newValue;
}
