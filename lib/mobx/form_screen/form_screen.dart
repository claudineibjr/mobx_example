import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_example/mobx/form_screen/customer_controller.dart';

class FormScreen extends StatelessWidget {
  final CustomerController _controller = GetIt.I.get<CustomerController>();
  
  Widget _textField({
    String labelText,
    Function onChanged,
    String Function() errorText,
  }) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText != null ? errorText() : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Observer(
                  builder: (_) {
                    return _textField(
                      labelText: 'Nome',
                      onChanged: _controller.changeName,
                      errorText: _controller.validateName,
                    );
                  },
                ),
                SizedBox(height: 15),
                Observer(
                  builder: (_) {
                    return _textField(
                      labelText: 'E-mail',
                      onChanged: _controller.changeEmail,
                      errorText: _controller.validateEmail,
                    );
                  },
                ),
                SizedBox(height: 25),
                Observer(builder: (_) {
                  return RaisedButton(
                    onPressed: _controller.canContinue ? () {} : null,
                    child: Text('Salvar'),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
