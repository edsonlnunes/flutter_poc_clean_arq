import 'package:dartz/dartz.dart';
import 'package:exemplo_arq_state/modules/search/domain/contratcs/errors/exception_search.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';

abstract class ISearchByTextUseCase {
  Future<Either<IExceptionSearch, List<User>>> execute(String text);
}
