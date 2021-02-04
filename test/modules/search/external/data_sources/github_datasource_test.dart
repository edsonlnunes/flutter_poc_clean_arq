import 'package:exemplo_arq_state/modules/search/external/data_sources/github.datasource.dart';
import 'package:exemplo_arq_state/modules/search/infra/models/result_user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

class DioMock extends Mock implements Dio {}

void main() {
  final dio = DioMock();
  final dataSource = GithubDataSource(dio);

  test('Deve retornar uma lista de ResultUser', () async {
    when(dio.get(any))
        .thenAnswer((_) async => Response(data: {}, statusCode: 200));

    final result = await dataSource.searchByText('edson');

    expect(result, isA<List<ResultUser>>());
  });

  test('Deve retornar uma Exception', () {
    when(dio.get(any))
        .thenAnswer((_) async => Response(data: {}, statusCode: 500));
    final futureResult = dataSource.searchByText('edson');
    expect(futureResult, throwsA(isA<Exception>()));
  });
}
