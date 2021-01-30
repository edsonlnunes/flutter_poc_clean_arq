import 'package:mobx/mobx.dart';

part 'controller_mobx.g.dart';

class ControllerMobx = ControllerMobxBase with _$ControllerMobx;

abstract class ControllerMobxBase with Store {
  @observable
  int counter = 0;

  @observable
  int counter2 = 0;

  @observable
  ObservableList<int> lista = <int>[].asObservable();

  @computed
  int get soma => counter + counter2;

  @action
  void increment() {
    counter++;
  }

  @action
  void increment2() {
    counter2++;
  }

  @action
  void decrement() {
    counter -= 1;
  }
}
