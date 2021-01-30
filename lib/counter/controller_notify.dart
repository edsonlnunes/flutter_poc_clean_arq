import 'package:flutter/foundation.dart';

class ControllerNotify {
  ValueNotifier<int> counter = ValueNotifier<int>(0);

  void increment() => counter.value += 1;
}
