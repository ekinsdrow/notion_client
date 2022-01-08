import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenClient {
  final FlutterSecureStorage flutterSecureStorage;
  final _key = 'token';

  TokenClient({
    required this.flutterSecureStorage,
  });

  Future<void> deleteToken() async {
    await flutterSecureStorage.delete(key: _key);
  }

  Future<String?> getToken() async {
    return await flutterSecureStorage.read(key: _key);
  }

  Future<void> saveToken({required String token}) async {
    await flutterSecureStorage.write(
      key: _key,
      value: token,
    );
  }
}
