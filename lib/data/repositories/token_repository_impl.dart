import 'package:notion_client/data/clients/token_client.dart';
import 'package:notion_client/data/repositories/token_repository.dart';

class TokenRepositoryImpl extends TokenRepository {
  final TokenClient tokenClient;
  TokenRepositoryImpl({
    required this.tokenClient,
  });

  @override
  Future<void> deleteToken() => tokenClient.deleteToken();

  @override
  Future<String?> getToken() => tokenClient.getToken();
  
  @override
  Future<void> saveToken({
    required String token,
  }) =>
      tokenClient.saveToken(token: token);
}
