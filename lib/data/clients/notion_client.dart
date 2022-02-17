import 'package:dio/dio.dart';
import 'package:notion_client/data/constants.dart';
import 'package:notion_client/data/models/auth.dart';
import 'package:notion_client/data/models/auth_body.dart';
import 'package:retrofit/retrofit.dart';

import 'package:notion_client/data/models/search_list.dart';

part 'notion_client.g.dart';

@RestApi(baseUrl: notionBaseUrl)
abstract class NotionClient {
  factory NotionClient(Dio dio) = _NotionClient;

  @POST('oauth/token')
  Future<Auth> getToken({
    @Body() required AuthBody authBody,
    @Header('Authorization') required String token,
  });

  @POST('search')
  Future<SearchList> getAllUserPages({
    @Header('Authorization') required String token,
  });
}
