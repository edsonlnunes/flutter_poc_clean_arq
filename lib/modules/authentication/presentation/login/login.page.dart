import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Modular.currentModule);
    print(Modular.initialRoute);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('Entrar'),
          onPressed: () {
            Modular.to.pushNamedAndRemoveUntil(
              '/search',
              (_) => false,
            );
          },
        ),
      ),
    );
  }
}
