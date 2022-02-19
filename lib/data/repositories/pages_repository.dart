import 'package:notion_client/data/models/search_list.dart';

abstract class PagesRepository {
  Future<SearchList> getAllPages();
  Future<SearchList> search({
    required String request,
  });
}
