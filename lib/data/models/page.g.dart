// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      id: json['id'] as String,
      object: json['object'] as String,
      pageProperties:
          PageProperties.fromJson(json['properties'] as Map<String, dynamic>),
      parent: BaseObjectParent.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'id': instance.id,
      'parent': instance.parent,
      'object': instance.object,
      'properties': instance.pageProperties,
    };
