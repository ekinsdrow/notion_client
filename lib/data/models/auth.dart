import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  factory Auth({
    @JsonKey(name: 'access_token') required String accessToken,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
