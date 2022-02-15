// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_object_parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseObjectParent _$$_BaseObjectParentFromJson(Map<String, dynamic> json) =>
    _$_BaseObjectParent(
      type: $enumDecode(_$BaseObjectParentTypeEnumMap, json['type']),
      databaseId: json['database_id'] as String?,
      pageId: json['page_id'] as String?,
    );

Map<String, dynamic> _$$_BaseObjectParentToJson(_$_BaseObjectParent instance) =>
    <String, dynamic>{
      'type': _$BaseObjectParentTypeEnumMap[instance.type],
      'database_id': instance.databaseId,
      'page_id': instance.pageId,
    };

const _$BaseObjectParentTypeEnumMap = {
  BaseObjectParentType.workspace: 'workspace',
  BaseObjectParentType.database: 'database_id',
  BaseObjectParentType.page: 'page_id',
};
