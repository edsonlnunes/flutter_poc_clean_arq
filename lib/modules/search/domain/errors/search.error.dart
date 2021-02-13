import 'package:exemplo_arq_state/modules/search/domain/contratcs/errors/exception_search.contract.dart';

class InvalidTextError implements IExceptionSearch {}

class DataSourceError implements IExceptionSearch {
  final String message;

  DataSourceError([this.message]);
}
