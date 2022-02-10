// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseList _$BaseListFromJson(Map<String, dynamic> json) => BaseList(
      object: json['object'] as String,
      nextCursor: json['next_cursor'] as String?,
      hasMore: json['has_more'] as bool,
      results: (json['results'] as List<dynamic>)
          .map((e) => BaseObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BaseListToJson(BaseList instance) => <String, dynamic>{
      'object': instance.object,
      'next_cursor': instance.nextCursor,
      'has_more': instance.hasMore,
      'results': instance.results,
    };
