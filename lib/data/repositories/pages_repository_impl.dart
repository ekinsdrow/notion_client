import 'package:notion_client/data/clients/notion_client.dart';
import 'package:notion_client/data/models/base_list.dart';
import 'package:notion_client/data/repositories/pages_repository.dart';

class PagesRepositoryImpl implements PagesRepository {
  final NotionClient notionClient;

  PagesRepositoryImpl({
    required this.notionClient,
  });

  @override
  Future<BaseList> getAllPages({
    required String token,
  }) async {
    return await notionClient.getAllUserPages(
      token: token,
    );
  }
}
