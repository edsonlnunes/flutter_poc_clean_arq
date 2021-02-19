import 'package:dio/dio.dart';
import 'package:exemplo_arq_state/modules/search/domain/usecases/search_by_text.usecase.dart';
import 'package:exemplo_arq_state/modules/search/external/data_sources/github.datasource.dart';
import 'package:exemplo_arq_state/modules/search/infra/repositories/search_by_text.repository.dart';
import 'package:exemplo_arq_state/modules/search/presentation/controller/search.controller.dart';
import 'package:exemplo_arq_state/modules/search/presentation/details/details.page.dart';
import 'package:exemplo_arq_state/modules/search/presentation/list/list.page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((_) => Dio()),
        Bind((i) => GithubDataSource(i.get())),
        Bind((i) => SearchByTextRepository(i.get())),
        Bind((i) => SearchByTextUseCase(i.get())),
        Bind((i) => SearchController(i.get())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/',
          child: (_, __) => ListPage(),
        ),
        ModularRouter(
          '/details',
          child: (_, __) => DetailsPage(),
        ),
      ];
}
