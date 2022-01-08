// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _NotionClient implements NotionClient {
  _NotionClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.notion.com/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Auth> getToken({required authBody, required token}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(authBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<Auth>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, 'oauth/token',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Auth.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
