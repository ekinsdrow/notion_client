import 'package:json_annotation/json_annotation.dart';
part 'auth_body.g.dart';

@JsonSerializable()
class AuthBody {
  AuthBody({
    required this.code,
    required this.redirectUri,
    this.grantType = 'authorization_code',
  });

  @JsonKey(name: 'grant_type')
  final String grantType;
  final String code;
  @JsonKey(name: 'redirect_uri')
  final String redirectUri;

  factory AuthBody.fromJson(Map<String, dynamic> json) => _$AuthBodyFromJson(json);
  Map<String, dynamic> toJson() => _$AuthBodyToJson(this);
}
