// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthBody _$$_AuthBodyFromJson(Map<String, dynamic> json) => _$_AuthBody(
      redirectUri: json['redirect_uri'] as String,
      grantType: json['grant_type'] as String? ?? 'authorization_code',
      code: json['code'] as String,
    );

Map<String, dynamic> _$$_AuthBodyToJson(_$_AuthBody instance) =>
    <String, dynamic>{
      'redirect_uri': instance.redirectUri,
      'grant_type': instance.grantType,
      'code': instance.code,
    };
