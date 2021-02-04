import 'package:dio/dio.dart';
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
    controller.useCase.execute('Teste');
    return Container();
  }
}
