import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/page_properties.dart';

import 'base_object_parent.dart';
import 'interfaces/base_object.dart';
part 'page.g.dart';

@JsonSerializable()
class Page implements BaseObject {
  Page({
    required this.id,
    required this.object,
    required this.pageProperties,
    required this.parent,
  });

  @override
  final String id;


  @override
  final BaseObjectParent parent;
  
  @override
  final String object;

  @override
  String get title {
    if (pageProperties.title != null) {
      if (pageProperties.title!.isNotEmpty) {
        return pageProperties.title!.first.plainText;
      }
    }
    return '';
  }

  @JsonKey(name: 'properties')
  final PageProperties pageProperties;

  factory Page.fromJson(Map<String, dynamic> json) {
    return _$PageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PageToJson(this);
}
