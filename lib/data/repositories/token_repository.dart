abstract class TokenRepository {
  Future<void> deleteToken();
  Future<String?> getToken();
  Future<void> saveToken({required String token});
}
