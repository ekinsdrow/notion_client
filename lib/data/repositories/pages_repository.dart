import 'package:notion_client/data/models/base_list.dart';

abstract class PagesRepository {
  Future<BaseList> getAllPages({required String token});
}
