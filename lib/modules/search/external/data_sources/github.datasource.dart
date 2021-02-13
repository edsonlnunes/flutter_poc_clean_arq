import 'package:dio/dio.dart';
import 'package:exemplo_arq_state/modules/search/domain/errors/domain.error.dart';
import 'package:exemplo_arq_state/modules/search/infra/contracts/data_sources/search_by_text_datasource.contract.dart';
import 'package:exemplo_arq_state/modules/search/infra/models/result_user.dart';

class GithubDataSource implements ISearchByTextDataSource {
  final Dio dio;

  GithubDataSource(this.dio);

  @override
  Future<List<ResultUser>> searchByText(String text) async {
    final response =
        await dio.get('https://api.github.com/search/users?q=$text');

    if (response.statusCode != 200) throw DataSourceError();

    var items = response.data['items'] as List;
    var users = items?.map((e) => ResultUser.fromMap(e))?.toList() ?? [];

    return users;
  }
}
