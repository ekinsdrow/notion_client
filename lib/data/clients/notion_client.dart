import 'package:dio/dio.dart';
import 'package:notion_client/data/models/auth.dart';
import 'package:notion_client/data/models/auth_body.dart';
import 'package:retrofit/retrofit.dart';

part 'notion_client.g.dart';

@RestApi(baseUrl: 'https://api.notion.com/v1/')
abstract class NotionClient {
  factory NotionClient(Dio dio) = _NotionClient;

  @POST('oauth/token')
  Future<Auth> getToken({
    @Body() required AuthBody authBody,
    @Header('Authorization') required String token
  });
}
