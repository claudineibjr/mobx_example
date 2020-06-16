import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/mobx/product_list_screen/product_item.dart';

class ProductWidget extends StatelessWidget {
  final ProductItem productItem;
  final Function onDeleteCallback;

  ProductWidget({
    this.productItem,
    this.onDeleteCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(productItem.title),
          leading: Checkbox(
            value: productItem.checked,
            onChanged: productItem.setChecked,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          trailing: GestureDetector(
            onTap: onDeleteCallback,
            child: Icon(
              Icons.remove_circle,
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}
