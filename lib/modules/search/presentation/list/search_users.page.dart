import 'package:dio/dio.dart';
import 'package:exemplo_arq_state/modules/search/domain/usecases/search_by_text.usecase.dart';
import 'package:exemplo_arq_state/modules/search/external/data_sources/github.datasource.dart';
import 'package:exemplo_arq_state/modules/search/infra/repositories/search_by_text.repository.dart';
import 'package:exemplo_arq_state/modules/search/presentation/list/app.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchUsersPage extends StatelessWidget {
  final user = {
    'nome': 'Edson',
    'cpf': '043.335.130-65',
    'idade': 23,
    'email': 'edsonmartins3110@gmail.com',
  };

  @override
  Widget build(BuildContext context) {
    print(Modular.currentModule);
    print(Modular.initialRoute);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          ListTile(
            leading: Icon(
              Icons.person_outline,
            ),
            title: Text(user['nome']),
            subtitle: Text(user['email']),
            onTap: () {
              Modular.link.pushNamed('/detail', arguments: user);
            },
          )
        ],
      ),
    );
  }
}
