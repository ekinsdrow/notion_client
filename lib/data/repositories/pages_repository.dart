import 'package:notion_client/data/models/search_list.dart';

abstract class PagesRepository {
  Future<SearchList> getAllPages({required String token});
}
