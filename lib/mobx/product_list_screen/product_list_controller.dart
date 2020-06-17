import 'package:mobx/mobx.dart';
import 'package:mobx_example/mobx/product_list_screen/product_item.dart';
part 'product_list_controller.g.dart';

class ProductListController = _ProductListControllerBase
    with _$ProductListController;

abstract class _ProductListControllerBase with Store {
  @observable
  ObservableList<ProductItem> items = [
    ProductItem(checked: false, title: 'Apple iPhone X Pro Max'),
    ProductItem(checked: true, title: 'Dell Inspiron 5447'),
    ProductItem(checked: true, title: 'Samsung Galaxy A30'),
    ProductItem(checked: false, title: 'Samsung Galaxy A30S'),
  ].asObservable();

  @observable
  String filter = '';

  @action
  setFilter(String value) => filter = value;

  @computed
  List<ProductItem> get listFiltered {
    if (filter.isEmpty) {
      return items;
    } else {
      return items
          .where(
              (item) => item.title.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    }
  }

  @computed
  int get countAll => items.length;

  @computed
  int get countAllChecked => items.where((element) => element.checked).length;

  @action
  addItem(ProductItem product) {
    items.add(product);
  }

  @action
  removeItem(ProductItem product) {
    items.remove(product);
  }
}
