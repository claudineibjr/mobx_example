import 'package:flutter/material.dart';
import 'package:mobx_example/mobx/product_list_screen/product_widget.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            labelText: 'Pesquisa...',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: ProductWidget(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: ProductWidget(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: ProductWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
