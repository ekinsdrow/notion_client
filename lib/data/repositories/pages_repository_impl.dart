import 'package:notion_client/data/clients/notion_client.dart';
import 'package:notion_client/data/repositories/pages_repository.dart';

import '../models/search_list.dart';

class PagesRepositoryImpl implements PagesRepository {
  final NotionClient notionClient;

  PagesRepositoryImpl({
    required this.notionClient,
  });

  @override
  Future<SearchList> getAllPages({
    required String token,
  }) async {
    return await notionClient.getAllUserPages(
      token: token,
    );
  }
}
