import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('Login'),
          onPressed: () {
            Modular.to.pushNamed('/authentication');
          },
        ),
      ),
    );
  }
}
