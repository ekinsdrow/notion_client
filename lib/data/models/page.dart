import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/base_object.dart';
part 'page.g.dart';

@JsonSerializable()
class Page extends BaseObject {
  Page({
    required String id,
    required String object,
  }) : super(
          id: id,
          object: object,
        );

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
  Map<String, dynamic> toJson() => _$PageToJson(this);
}
