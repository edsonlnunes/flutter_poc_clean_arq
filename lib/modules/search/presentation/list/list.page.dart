import 'package:dartz/dartz.dart';
import 'package:exemplo_arq_state/modules/search/domain/contratcs/errors/exception_search.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';
import 'package:exemplo_arq_state/modules/search/domain/errors/search.error.dart';
import 'package:exemplo_arq_state/modules/search/presentation/controller/search.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListPage extends StatelessWidget {
  final controller = Modular.get<SearchController>();

  @override
  Widget build(BuildContext context) {
    print(controller);
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: FutureBuilder<Either<IExceptionSearch, List<User>>>(
        future: controller.useCase.execute('eds'),
        builder:
            (_, AsyncSnapshot<Either<IExceptionSearch, List<User>>> snapshot) {
          if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }

          var resultOrFailure = snapshot.data;

          if (resultOrFailure.isLeft()) {
            var error = resultOrFailure.fold(id, id);

            return Center(
              child: Text(error.runtimeType == DataSourceError
                  ? 'Ocorreu um erro na request pro github'
                  : 'Texto inválido'),
            );
          }

          var users = resultOrFailure.getOrElse(null);
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (_, index) {
              return Text(users[index].user);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Modular.to.pushNamed('/search/details');
        },
      ),
    );
  }
}
