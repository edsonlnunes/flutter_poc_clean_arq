import 'package:exemplo_arq_state/modules/search/domain/contratcs/repositories/search_by_text_repository.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/contratcs/usescases/search_by_text_usecase.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';

class SearchByTextUseCase implements ISearchByTextUseCase {
  final ISearchByTextRepository _repository;

  SearchByTextUseCase(this._repository);

  @override
  Future<List<User>> execute(String text) async {
    if (text == null || text.isEmpty) throw Exception('Texto inválido');

    return _repository.searchByText(text);
  }
}
