import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.arrow_forward,
            size: 40,
          ),
          onPressed: () {
            Modular.to.pushNamedAndRemoveUntil(
              '/search',
              (_) => false,
            );
          },
          color: Colors.blue,
        ),
      ),
    );
  }
}
