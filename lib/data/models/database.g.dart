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
      richTextTitle: (json['title'] as List<dynamic>)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DatabaseToJson(Database instance) => <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'icon': instance.icon,
      'title': instance.richTextTitle,
    };
