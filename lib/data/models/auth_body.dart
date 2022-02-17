import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_body.freezed.dart';
part 'auth_body.g.dart';

@freezed
class AuthBody with _$AuthBody {
  factory AuthBody({
    @JsonKey(name: 'redirect_uri') required String redirectUri,
    @JsonKey(name: 'grant_type')
    @Default('authorization_code')
        String grantType,
    required String code,
  }) = _AuthBody;

  factory AuthBody.fromJson(Map<String, dynamic> json) =>
      _$AuthBodyFromJson(json);
}
