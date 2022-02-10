// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseObject _$BaseObjectFromJson(Map<String, dynamic> json) => BaseObject(
      id: json['id'] as String,
      object: json['object'] as String,
      icon: json['icon'] == null
          ? null
          : EmojiIcon.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseObjectToJson(BaseObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'icon': instance.icon,
    };
