import 'package:flutter/cupertino.dart';

class ControllerChangeNotifier extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter += 1;
    notifyListeners();
  }
}
