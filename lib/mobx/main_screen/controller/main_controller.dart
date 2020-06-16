import 'package:mobx/mobx.dart';

class MainController {
  Observable<int> _counter;
  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;

  Action increment;

  MainController() {
    _counter = Observable(0);
    increment = Action(_increment);

    autorun(
      (_) {
        print(counter);
      },
    );
  }

  _increment() {
    counter++;
  }
}
