import 'package:dartz/dartz.dart';
import 'package:exemplo_arq_state/modules/search/domain/errors/domain.error.dart';
import 'package:exemplo_arq_state/modules/search/infra/contracts/data_sources/search_by_text_datasource.contract.dart';
import 'package:exemplo_arq_state/modules/search/infra/models/result_user.dart';
import 'package:exemplo_arq_state/modules/search/infra/repositories/search_by_text.repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class SearchByTextDataSourceMock extends Mock
    implements ISearchByTextDataSource {}

void main() {
  final dataSource = SearchByTextDataSourceMock();
  final repository = SearchByTextRepository(dataSource);

  test('Deve retornar uma lista de ResultUser', () async {
    when(dataSource.searchByText(any)).thenAnswer((_) async => <ResultUser>[]);
    final usersOrFailure = await repository.searchByText('edson');
    expect(usersOrFailure, isA<Right>());
    expect(usersOrFailure.getOrElse(null), isA<List<ResultUser>>());
  });

  test('Deve retornar uma DataSourceError', () async {
    when(dataSource.searchByText(any)).thenThrow((_) async => Exception());

    final usersOrFailure = await repository.searchByText('edson');

    expect(usersOrFailure.fold(id, id), isA<DataSourceError>());
  });
}
