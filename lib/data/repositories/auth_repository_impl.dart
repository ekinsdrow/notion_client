import 'package:notion_client/data/models/auth_body.dart';
import 'package:notion_client/data/models/auth.dart';
import 'package:notion_client/data/repositories/auth_repository.dart';
import 'package:notion_client/data/clients/notion_client.dart';

class AuthRepositoryImpl implements AuthRepository {
  final NotionClient notionClient;

  AuthRepositoryImpl({
    required this.notionClient,
  });

  @override
  Future<Auth> getToken({
    required AuthBody authBody,
    required String token,
  }) =>
      notionClient.getToken(
        authBody: authBody,
        token: 'Basic $token'
      );
}
