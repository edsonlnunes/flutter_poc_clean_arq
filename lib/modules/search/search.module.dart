import 'package:dio/dio.dart';
import 'package:exemplo_arq_state/modules/search/presentation/detail/detail_user.page.dart';
import 'package:exemplo_arq_state/modules/search/presentation/list/search_users.page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'domain/contratcs/repositories/search_by_text_repository.contract.dart';
import 'domain/contratcs/usescases/search_by_text_usecase.contract.dart';
import 'domain/usecases/search_by_text.usecase.dart';
import 'external/data_sources/github.datasource.dart';
import 'infra/contracts/data_sources/search_by_text_datasource.contract.dart';
import 'infra/repositories/search_by_text.repository.dart';

class SearchModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind<Dio>((i) => Dio()),
        Bind<ISearchByTextDataSource>((i) => GithubDataSource(i())),
        Bind<ISearchByTextRepository>((i) => SearchByTextRepository(i())),
        Bind<ISearchByTextUseCase>((i) => SearchByTextUseCase(i())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => SearchUsersPage()),
        ModularRouter(
          '/detail',
          child: (_, args) => DetailUserPage(user: args.data),
        ),
      ];
}
