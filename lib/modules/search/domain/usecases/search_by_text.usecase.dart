import 'package:exemplo_arq_state/modules/search/domain/contratcs/usescases/search_by_text_usecase.contract.dart';
import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';

class SearchByTextUseCase implements ISearchByTextUseCase {
  @override
  Future<List<User>> execute(String text) {}
}
