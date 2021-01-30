import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';

abstract class ISearchByTextUseCase {
  Future<List<User>> execute(String text);
}
