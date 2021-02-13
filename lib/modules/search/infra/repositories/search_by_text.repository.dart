import 'package:dartz/dartz.dart';
import 'package:exemplo_arq_state/modules/search/domain/contratcs/errors/exception_search.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/contratcs/repositories/search_by_text_repository.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/errors/domain.error.dart';
import 'package:exemplo_arq_state/modules/search/infra/contracts/data_sources/search_by_text_datasource.contract.dart';
import 'package:exemplo_arq_state/modules/search/infra/models/result_user.dart';

class SearchByTextRepository implements ISearchByTextRepository {
  final ISearchByTextDataSource dataSource;

  SearchByTextRepository(this.dataSource);

  @override
  Future<Either<IExceptionSearch, List<ResultUser>>> searchByText(
      String searchText) async {
    try {
      var users = await dataSource.searchByText(searchText);
      return Right(users);
    } on DataSourceError catch (e) {
      return Left(e);
    } catch (e) {
      return Left(DataSourceError());
    }
  }
}
