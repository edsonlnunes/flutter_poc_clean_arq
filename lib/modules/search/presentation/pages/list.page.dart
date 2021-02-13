import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:exemplo_arq_state/modules/search/domain/contratcs/errors/exception_search.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';
import 'package:exemplo_arq_state/modules/search/domain/errors/search.error.dart';
import 'package:exemplo_arq_state/modules/search/domain/usecases/search_by_text.usecase.dart';
import 'package:exemplo_arq_state/modules/search/external/data_sources/github.datasource.dart';
import 'package:exemplo_arq_state/modules/search/infra/repositories/search_by_text.repository.dart';
import 'package:exemplo_arq_state/modules/search/presentation/controller/app.controller.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final controller = AppController(
    SearchByTextUseCase(
      SearchByTextRepository(
        GithubDataSource(
          Dio(),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<Either<IExceptionSearch, List<User>>>(
        future: controller.useCase.execute('Edson'),
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
    );
  }
}
