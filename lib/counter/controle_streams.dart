import 'dart:async';

import 'package:rxdart/rxdart.dart';

class ControllerStreams {
  var _counter = 0;

  final _counterController = BehaviorSubject<int>.seeded(0);
  Sink get sink => _counterController.sink;
  Stream get counter => _counterController.stream;

  void increment() {
    _counter += 1;
    sink.add(_counter);
  }

  void dispose() {
    _counterController.close();
  }
}
