import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/authentication/presentation/login/login.page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Modular.initialRoute,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
