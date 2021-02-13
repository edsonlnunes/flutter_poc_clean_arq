import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'modules/search/presentation/pages/list.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String valor = 'Quinta';
  @override
  Widget build(BuildContext context) {
    var content = <Widget>[
      RichText(
          text: TextSpan(text: 'Não tem cadastro? ', children: [
        TextSpan(
            text: 'Clique aqui para fazer o cadastro.',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ))
      ])),
    ];

    var actions = <Widget>[
      RaisedButton(
        child: Text('Fechar'),
        onPressed: () {},
      ),
      RaisedButton(
        child: Text('Continuar'),
        onPressed: () {},
        color: Colors.blue,
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Teste'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Center(
            child: Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                child: Text('Mostrar modal'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) {
                      return AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                child: Icon(
                                  Icons.close,
                                  color: Color(0xffe16e0e),
                                  size: 30,
                                ),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Text(
                              'Titulo qualquer',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    color: Colors.orange,
                                  ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ...content,
                            SizedBox(
                              height: 15,
                            ),
                            resolveAcoes(actions),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ));
  }

  Widget resolveAcoes(List<Widget> actions) {
    if (actions.length == 1) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          width: double.infinity,
          child: actions[0],
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: actions,
    );
  }
}
