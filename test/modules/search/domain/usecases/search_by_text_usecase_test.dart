import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exemplo_arq_state/modules/search/domain/contratcs/repositories/search_by_text_repository.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';
import 'package:exemplo_arq_state/modules/search/domain/usecases/search_by_text.usecase.dart';

class SearchByTextRepositoryMock extends Mock
    implements ISearchByTextRepository {}

void main() {
  final repository = SearchByTextRepositoryMock();
  final useCase = SearchByTextUseCase(repository);

  test('Deve retornar uma lista de usuários', () async {
    when(repository.searchByText(any)).thenAnswer((_) async => <User>[]);

    final users = await useCase.execute('Edson');
    expect(users, isA<List<User>>());
  });

  test('Deve retornar um erro ao receber um texto inválido', () async {
    try {
      await useCase.execute(null);
    } catch (e) {
      throwsA(e);
    }
  });
}
