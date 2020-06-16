import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quiz_bible/mobx/profile_screen/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController controller = ProfileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Nome'),
                  onChanged: controller.changeName,
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(labelText: 'Sobrenome'),
                  onChanged: controller.changeSurname,
                ),
                SizedBox(height: 10),
                Observer(
                  builder: (_) {
                    return Text(
                      'Nome Completo: ${controller.fullName}',
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
