// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthBody _$AuthBodyFromJson(Map<String, dynamic> json) => AuthBody(
      code: json['code'] as String,
      redirectUri: json['redirect_uri'] as String,
      grantType: json['grant_type'] as String? ?? 'authorization_code',
    );

Map<String, dynamic> _$AuthBodyToJson(AuthBody instance) => <String, dynamic>{
      'grant_type': instance.grantType,
      'code': instance.code,
      'redirect_uri': instance.redirectUri,
    };
