// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Database _$DatabaseFromJson(Map<String, dynamic> json) => Database(
      id: json['id'] as String,
      richTextTitle: (json['title'] as List<dynamic>)
          .map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
      parent: BaseObjectParent.fromJson(json['parent'] as Map<String, dynamic>),
      emojiIcon:
          BaseObject.emojiIconFromJson(json['icon'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$DatabaseToJson(Database instance) => <String, dynamic>{
      'id': instance.id,
      'parent': instance.parent,
      'icon': instance.emojiIcon,
      'title': instance.richTextTitle,
    };
