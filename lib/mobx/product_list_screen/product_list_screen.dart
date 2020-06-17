import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_example/mobx/product_list_screen/product_item.dart';
import 'package:mobx_example/mobx/product_list_screen/product_list_controller.dart';
import 'package:mobx_example/mobx/product_list_screen/product_widget.dart';

class ProductListScreen extends StatelessWidget {
  final ProductListController _controller =
      GetIt.I.get<ProductListController>();

  static Future<String> showInputDialog(
    BuildContext context, {
    @required String labelText,
    String cancelText = 'Cancelar',
    String confirmText = 'Ok',
    String initialValue = '',
    String hintText = '',
  }) async {
    String value = initialValue;

    return await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext childContext) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(16),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                labelText,
                textAlign: TextAlign.left,
              ),
              TextFormField(
                initialValue: value,
                decoration: InputDecoration(
                  hintText: hintText,
                ),
                autofocus: true,
                onChanged: (String newValue) => value = newValue,
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: new Text(cancelText.toUpperCase()),
              onPressed: () {
                Navigator.of(childContext).pop();
              },
            ),
            FlatButton(
              child: new Text(confirmText.toUpperCase()),
              onPressed: () {
                Navigator.of(childContext).pop(value);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: _controller.setFilter,
          decoration: InputDecoration(
            hintText: 'Pesquisa...',
            hintStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          Observer(
            builder: (_) {
              return IconButton(
                icon: Text(_controller.allChecked.toString()),
                onPressed: () {},
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: Observer(
          builder: (_) {
            return ListView.builder(
              itemCount: _controller.listFiltered.length,
              itemBuilder: (_, index) {
                ProductItem product = _controller.listFiltered[index];

                return ProductWidget(
                  productItem: product,
                  onDeleteCallback: () {
                    _controller.removeItem(product);
                  },
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String result = await showInputDialog(context, labelText: 'Produto');
          if (result != null)
            _controller.addItem(
              ProductItem(
                title: result,
              ),
            );
        },
        child: Icon(
          Icons.add_shopping_cart,
        ),
      ),
    );
  }
}
