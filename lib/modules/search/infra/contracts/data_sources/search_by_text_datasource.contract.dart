import 'package:exemplo_arq_state/modules/search/infra/models/result_user.dart';

abstract class ISearchByTextDataSource {
  Future<List<ResultUser>> searchByText(String text);
}
