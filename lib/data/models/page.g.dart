// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      icon: json['icon'] == null
          ? null
          : EmojiIcon.fromJson(json['icon'] as Map<String, dynamic>),
      id: json['id'] as String,
      object: json['object'] as String,
      pageProperties:
          PageProperties.fromJson(json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'icon': instance.icon,
      'properties': instance.pageProperties,
    };
