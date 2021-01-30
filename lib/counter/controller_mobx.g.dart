// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerMobx on ControllerMobxBase, Store {
  Computed<int> _$somaComputed;

  @override
  int get soma => (_$somaComputed ??=
          Computed<int>(() => super.soma, name: 'ControllerMobxBase.soma'))
      .value;

  final _$counterAtom = Atom(name: 'ControllerMobxBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$counter2Atom = Atom(name: 'ControllerMobxBase.counter2');

  @override
  int get counter2 {
    _$counter2Atom.reportRead();
    return super.counter2;
  }

  @override
  set counter2(int value) {
    _$counter2Atom.reportWrite(value, super.counter2, () {
      super.counter2 = value;
    });
  }

  final _$listaAtom = Atom(name: 'ControllerMobxBase.lista');

  @override
  ObservableList<int> get lista {
    _$listaAtom.reportRead();
    return super.lista;
  }

  @override
  set lista(ObservableList<int> value) {
    _$listaAtom.reportWrite(value, super.lista, () {
      super.lista = value;
    });
  }

  final _$ControllerMobxBaseActionController =
      ActionController(name: 'ControllerMobxBase');

  @override
  void increment() {
    final _$actionInfo = _$ControllerMobxBaseActionController.startAction(
        name: 'ControllerMobxBase.increment');
    try {
      return super.increment();
    } finally {
      _$ControllerMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment2() {
    final _$actionInfo = _$ControllerMobxBaseActionController.startAction(
        name: 'ControllerMobxBase.increment2');
    try {
      return super.increment2();
    } finally {
      _$ControllerMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$ControllerMobxBaseActionController.startAction(
        name: 'ControllerMobxBase.decrement');
    try {
      return super.decrement();
    } finally {
      _$ControllerMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
counter2: ${counter2},
lista: ${lista},
soma: ${soma}
    ''';
  }
}
