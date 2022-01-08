import 'package:notion_client/data/models/auth.dart';
import 'package:notion_client/data/models/auth_body.dart';

abstract class AuthRepository {
  Future<Auth> getToken({
    required AuthBody authBody,
    required String token,
  });
}
