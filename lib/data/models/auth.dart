import 'package:json_annotation/json_annotation.dart';
part 'auth.g.dart';

@JsonSerializable()
class Auth {
  Auth({
    required this.accessToken,
  });

  @JsonKey(name: 'access_token')
  final String accessToken;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
  Map<String, dynamic> toJson() => _$AuthToJson(this);
}
