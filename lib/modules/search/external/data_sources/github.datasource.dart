import 'package:dio/dio.dart';
import 'package:exemplo_arq_state/modules/search/domain/errors/search.error.dart';
import 'package:exemplo_arq_state/modules/search/infra/contracts/data_sources/search_by_text_datasource.contract.dart';
import 'package:exemplo_arq_state/modules/search/infra/models/result_user.dart';

class GithubDataSource implements ISearchByTextDataSource {
  final Dio dio;

  GithubDataSource(this.dio);

  @override
  Future<List<ResultUser>> searchByText(String text) async {
    try {
      final url = 'https://api.github.com/search/users?q=$text';
      final response = await dio.get(url);

      if (response.statusCode != 200)
        throw DataSourceError('Erro na requisição');

      var items = response.data['items'] as List;
      var users = items?.map((e) => ResultUser.fromMap(e))?.toList() ?? [];

      return users;
    } catch (e) {
      throw DataSourceError();
    }
  }
}
