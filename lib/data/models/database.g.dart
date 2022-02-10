// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Database _$DatabaseFromJson(Map<String, dynamic> json) => Database(
      object: json['object'] as String,
      id: json['id'] as String,
      icon: json['icon'] == null
          ? null
          : EmojiIcon.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatabaseToJson(Database instance) => <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'icon': instance.icon,
    };
