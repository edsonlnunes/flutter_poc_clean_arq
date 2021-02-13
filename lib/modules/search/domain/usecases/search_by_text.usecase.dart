import 'package:dartz/dartz.dart';
import 'package:exemplo_arq_state/modules/search/domain/contratcs/errors/exception_search.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/contratcs/repositories/search_by_text_repository.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/contratcs/usescases/search_by_text_usecase.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';
import 'package:exemplo_arq_state/modules/search/domain/errors/domain.error.dart';

class SearchByTextUseCase implements ISearchByTextUseCase {
  final ISearchByTextRepository _repository;

  SearchByTextUseCase(this._repository);

  @override
  Future<Either<IExceptionSearch, List<User>>> execute(String text) async {
    if (text == null || text.isEmpty) return Left(InvalidTextError());

    return _repository.searchByText(text);
  }
}
