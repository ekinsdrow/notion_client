import 'package:notion_client/data/clients/notion_client.dart';
import 'package:notion_client/data/repositories/pages_repository.dart';
import 'package:notion_client/data/models/search_list.dart';

class PagesRepositoryImpl implements PagesRepository {
  final NotionClient notionClient;
  final String token;

  PagesRepositoryImpl({
    required this.notionClient,
    required this.token,
  });

  @override
  Future<SearchList> getAllPages() async {
    return await notionClient.getAllUserPages(
      token: token,
    );
  }
}
