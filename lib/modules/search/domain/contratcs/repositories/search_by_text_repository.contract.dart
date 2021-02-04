import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';

abstract class ISearchByTextRepository {
  Future<List<User>> searchByText(String searchText);
}
