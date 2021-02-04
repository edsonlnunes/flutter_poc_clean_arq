import 'package:exemplo_arq_state/modules/search/domain/contratcs/repositories/search_by_text_repository.contract.dart';
import 'package:exemplo_arq_state/modules/search/infra/contracts/data_sources/search_by_text_datasource.contract.dart';
import 'package:exemplo_arq_state/modules/search/infra/models/result_user.dart';

class SearchByTextRepository implements ISearchByTextRepository {
  final ISearchByTextDataSource dataSource;

  SearchByTextRepository(this.dataSource);

  @override
  Future<List<ResultUser>> searchByText(String searchText) async {
    try {
      return dataSource.searchByText(searchText);
    } catch (e) {
      throw Exception('Erro na requisição para pegar os usuários');
    }
  }
}
