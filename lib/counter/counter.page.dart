import 'package:exemplo_arq_state/counter/controller_mobx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {
  final controller = ControllerMobx();

  @override
  Widget build(BuildContext context) {
    print('passou pelo buid');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        actions: [
          FlatButton(
            child: Text(
              controller.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) {
                print('passou pelo consumer');
                return Text(
                  controller.counter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Observer(
              builder: (_) {
                print('passou pelo consumer');
                return Text(
                  controller.counter2.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Observer(
              builder: (_) {
                print('passou pelo consumer');
                return Text(
                  controller.soma.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: controller.increment2,
            tooltip: 'Increment',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
