// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageProperties _$PagePropertiesFromJson(Map<String, dynamic> json) =>
    PageProperties(
      title: (json['title'] as List<dynamic>?)
          ?.map((e) => RichText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PagePropertiesToJson(PageProperties instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
