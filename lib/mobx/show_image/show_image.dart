import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/mobx/show_image/show_image_controller.dart';

class ShowImageScreen extends StatelessWidget {
  final ShowImageController _controller = ShowImageController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ShowImageScreen() {
    autorun(
      (_) {
        switch (_controller.state) {
          case EnumState.IDLE:
            print('IDLE');
            break;
          case EnumState.LOADING:
            print('Loading');
            break;
          case EnumState.ERROR:
            print('ERROR');
            _scaffoldKey.currentState.showSnackBar(
              SnackBar(
                content: Text('Deu erro'),
              ),
            );
            _controller.changeState(EnumState.IDLE);
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagens'),
      ),
      key: _scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Observer(
              builder: (_) {
                if (_controller.state == EnumState.LOADING) {
                  return Center(
                    child: Column(
                      children: <Widget>[
                        CircularProgressIndicator(),
                        Text('Loading...'),
                      ],
                    ),
                  );
                } else {
                  return Column(
                    children: <Widget>[
                      Observer(
                        builder: (_) {
                          print('Build - Nothing');
                          return Text(
                            'Pesquise por uma imagem - ${_controller.imageURLLenght}',
                          );
                        },
                      ),
                      Observer(
                        builder: (_) {
                          print('Build - ImageURL');
                          return TextFormField(
                            initialValue: _controller.imageURL,
                            onChanged: _controller.changeImageURL,
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      Observer(
                        builder: (_) {
                          print('Build - Extension');
                          return TextFormField(
                            initialValue: _controller.extensionURL,
                            onChanged: _controller.changeExtensionURL,
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      RaisedButton(
                        onPressed: _controller.loadImage,
                        child: Text('Load...'),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
