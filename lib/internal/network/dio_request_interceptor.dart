import 'package:dio/dio.dart';
import 'package:notion_client/data/constants.dart';

class DioRequestInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers['Notion-Version'] = notionVersion;

    handler.next(options);
  }
}
